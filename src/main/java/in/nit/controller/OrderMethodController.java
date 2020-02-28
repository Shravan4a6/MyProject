package in.nit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ordermethod")
public class OrderMethodController {

	@RequestMapping("/register")
	public String showReg() {
		return "OrderMethodRegister";
		
	}
}
