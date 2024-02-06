package com.somoim.app.member;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.util.FileManager;

@Service
public class MemberService {
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private ServletContext servletContext;
	@Autowired
	private FileManager fileManager;
	
	public int setPasswordUpdate(MemberDTO memberDTO)throws Exception{
		int result = memberDAO.setPasswordUpdate(memberDTO);
		return result;
	}
	
	public int setUpdate(MemberDTO memberDTO,MultipartFile attachs)throws Exception{
		int result = 0;
		
		result = memberDAO.setUpdate(memberDTO);
		
		if(attachs.isEmpty()) {
			return result;
		}
		String path = servletContext.getRealPath("/resources/upload/member");
		
		String fileName = fileManager.fileSave(path, attachs);
		ProfileDTO profileDTO = new ProfileDTO();
		profileDTO.setFileName(fileName);
		profileDTO.setOriName(attachs.getOriginalFilename());
		profileDTO.setUserName(memberDTO.getUserName());
		
		result = memberDAO.setProfileJoin(profileDTO);
		
		return result;
	}
	
	public int setjoin(MemberDTO memberDTO,MultipartFile attachs)throws Exception {
		int result = 0 ;
		result = memberDAO.setJoin(memberDTO);
		if(attachs.isEmpty()) {
			return result;
		}
		String path = servletContext.getRealPath("/resources/upload/member");
		
		String fileName = fileManager.fileSave(path, attachs);
		ProfileDTO profileDTO = new ProfileDTO();
		profileDTO.setFileName(fileName);
		profileDTO.setOriName(attachs.getOriginalFilename());
		profileDTO.setUserName(memberDTO.getUserName());
		
		result = memberDAO.setProfileJoin(profileDTO);
		
		return result;		
	}
	public MemberDTO getLogin(MemberDTO memberDTO)throws Exception{
		MemberDTO dto = memberDAO.getDetail(memberDTO);
		
		if(dto!=null) {
			if(dto.getPassword().equals(memberDTO.getPassword())) {
				return memberDTO; 
			}else {
				dto=null;
			}
		}
		return dto;
	}
	
	public MemberDTO getMypage(MemberDTO memberDTO)throws Exception{
		return memberDAO.getDetail(memberDTO);
	}
}
