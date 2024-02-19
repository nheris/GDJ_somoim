package com.somoim.app.member;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;





@Controller
@RequestMapping("/member/*")

public class MemberController {
	@Autowired
	private MemberService memberService;
	
	public HashMap<String, Object> getUserInfo(String accessToken) {
	    HashMap<String, Object> userInfo = new HashMap<>();
	    String reqUrl = "https://kapi.kakao.com/v2/user/me";
	    try{
	        URL url = new URL(reqUrl);
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	        conn.setRequestMethod("POST");
	        conn.setRequestProperty("Authorization", "Bearer " + accessToken);
	        conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

	        int responseCode = conn.getResponseCode();
	       
	        BufferedReader br;
	        if (responseCode >= 200 && responseCode <= 300) {
	            br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        } else {
	            br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	        }

	        String line = "";
	        StringBuilder responseSb = new StringBuilder();
	        while((line = br.readLine()) != null){
	            responseSb.append(line);
	        }
	        String result = responseSb.toString();
	        
	        ObjectMapper objectMapper = new ObjectMapper();

	     // Json 문자열을 JsonNode로 파싱
	     JsonNode jsonNode = objectMapper.readTree(result);

	     // properties와 kakao_account 필드에 접근하여 JsonObject로 변환
	     JsonNode propertiesNode = jsonNode.get("properties");
	     JsonNode kakaoAccountNode = jsonNode.get("kakao_account");
	     

	     String nickname = propertiesNode.path("nickname").asText();
	        String email = kakaoAccountNode.path("email").asText();
	        
	        userInfo.put("nickname", nickname);
	        userInfo.put("email", email);

	        br.close();

	    }catch (Exception e){
	        e.printStackTrace();
	    }
	    return userInfo;
	}
	
	// 카카오 로그인 access_token 리턴
	public String getAccessToken(String code) throws Exception {
	    String access_Token = "";
	    String refresh_Token = "";
	    String reqURL = "https://kauth.kakao.com/oauth/token";

	    try {
	        URL url = new URL(reqURL);
	        HttpURLConnection conn = (HttpURLConnection) url.openConnection();

	        //POST 요청을 위해 기본값이 false인 setDoOutput을 true로
	        conn.setRequestMethod("POST");
	        conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
	        conn.setDoOutput(true);

	        //POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
	        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
	        StringBuilder sb = new StringBuilder();
	        sb.append("grant_type=authorization_code");
	        sb.append("&client_id=f596bc753587abe6cf4b789ef8f12223");  //본인이 발급받은 key
	        sb.append("&redirect_uri=http://localhost/member/login");     // 본인이 설정해 놓은 경로
	        sb.append("&code=" + code);
	        bw.write(sb.toString());
	        bw.flush();

	        //결과 코드가 200이라면 성공
	        int responseCode = conn.getResponseCode();
	        System.out.println("responseCode : " + responseCode);

	        //요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
	        BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	        String line = "";
	        String result = "";

	        while ((line = br.readLine()) != null) {
	            result += line;
	        }
	        System.out.println("response body : " + result);

	     // 요청을 통해 얻은 JSON 타입의 Response 메시지를 JsonObject로 파싱
	     //objectmapper
	        ObjectMapper objectMapper = new ObjectMapper();
	        Map<String, String> jsonMap= objectMapper.readValue(result, new TypeReference<Map<String, String>>(){});

	        // JsonObject에서 access_token과 refresh_token 값을 가져옴
	        access_Token = jsonMap.get("access_token");
	        refresh_Token = jsonMap.get("refresh_token");

	        System.out.println("access_token : " + access_Token);
	        System.out.println("refresh_token : " + refresh_Token);
	        br.close();
	        bw.close();
	    } catch (IOException e) {
	        // TODO Auto-generated catch block
	        e.printStackTrace();
	    }

	    return access_Token;
	}
		
	
	// 카카오 sns 로그인 redirect 페이지
	@RequestMapping(value = "/login")
	public String snsKakaologin(String code, HttpServletRequest request) throws Exception {
	  // 전달 받은 code를 사용해서 access_token 받기
	  String accessToken = getAccessToken(code);
	  //return받은 access_token으로 사용자 정보 가져오기
	  HashMap<String, Object> userInfo = getUserInfo(accessToken);

	  String phone = (String) userInfo.get("phone_number");
	  String strPhone = phone.replaceAll("-", "");
	  strPhone = strPhone.replace("+82 ", "0");
	  
	  if(userInfo != null) {
	    //사용자 정보가 존재하면 SNS로그인 처리해주도록 redirect
	    return "redirect:/login/snsLoginWithPhone?snsType=K&phone=" + strPhone;
	  } else {
	    //회원가입 페이지로 redirect
	    return "redirect:/joinApp/join?snsType=K";
	  }
	  
	}
	
	//구글 로그인
	@GetMapping("joinApp")
	public void setJoinApp(ModelAndView mv)throws Exception{		
	}
	
	@PostMapping("joinApp")
	public String setJoinApp(MemberDTO memberDTO,MultipartFile attachs,Model model)throws Exception{
		int result = memberService.setjoin(memberDTO, attachs);
		String msg = "가입불가";
		String path = "./joinApp";
		
		if(result>0) {
			msg = "가입성공";
			path = "../";
		}
		
		model.addAttribute("msg", msg);
		model.addAttribute("path", path);
		
		return "member/result";
	}
	
	//구글 아이디 정보 가져오기	
	@PostMapping("submitApp")
	@ResponseBody
	public String submitJoinApp(MemberDTO memberDTO,HttpSession session)throws Exception{
		System.out.println("Received userName: " + memberDTO.getName());
		System.out.println("Received email: " + memberDTO.getUserName());        
		
		MemberDTO dto = memberService.submitJoinApp(memberDTO);
        
		if(dto==null) {
			session.setAttribute("appmember",memberDTO);      			
			return "success";
		}else {
			System.out.println(dto.getUserName()+"왜 로그인이 안되니?");
			session.setAttribute("member",dto);
			return "goHome";
		}
	}
	
	
	
	@GetMapping("idCheck")
	public String getIdCheck(MemberDTO memberDTO,Model model)throws Exception{
		int result = 0;

		memberDTO = memberService.getMypage(memberDTO);
		if(memberDTO == null) {
			result = 1;
		}

		model.addAttribute("result",result);
		
		return "member/idCheck";
		
	}

	@GetMapping("join")
	public void setJoin(MemberDTO memberDTO)throws Exception{

	}

	@PostMapping("join")
	public String setJoin(MemberDTO memberDTO,MultipartFile attachs,Model model)throws Exception{
		int result = memberService.setjoin(memberDTO, attachs);

		String msg = "가입 실패";
		String path = "./join";

		if(result>0) {
			msg = "가입 성공";
			path = "../";
		}

		model.addAttribute("msg", msg);
		System.out.println("path");
		model.addAttribute("path", path);

		return "member/result";
	}
	@GetMapping("login")
	public void getLogin(MemberDTO memberDTO)throws Exception{

	}

	@PostMapping("login")
	public String getLogin(MemberDTO memberDTO,HttpSession session,Model model)throws Exception{
		memberDTO= memberService.getLogin(memberDTO);
		String msg = "아이디 또는 비밀번호 확인";
		String path = "/member/login";
		if(memberDTO==null) {
			model.addAttribute("msg", msg);
			model.addAttribute("path", path);
			return "member/result";
		}else if(memberDTO.getLoginNum()==2) {
			msg = "app가입자는 app으로 로그인";
			model.addAttribute("msg", msg);
			model.addAttribute("path", path);
			return "member/result";
		}
		session.setAttribute("member", memberDTO);
		return "redirect:../";
	}
	@GetMapping("logout")
	public String getLogout(HttpSession session)throws Exception{
		session.setAttribute("member",null);
		return "redirect:../";
	}

}
