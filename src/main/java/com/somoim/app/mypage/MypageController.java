package com.somoim.app.mypage;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.somoim.app.payment.PaymentService;
import com.somoim.app.payment.PaymentTypeDTO;

@Controller
@RequestMapping("/mypage/*")
public class MypageController {
	
	@Autowired
	private MypageService mypageService;
	
	@Autowired
	private PaymentService paymentService;

	@GetMapping("pay")
	public String setPaymentType(HttpSession session, Model model)throws Exception {
		List<PaymentTypeDTO> ar = paymentService.getPaymentTypeList();
		model.addAttribute("paymentType",ar);
		return "./mypage/pay";
	}
}
