package com.spring.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	//메소드 실행~~
	public String login() {
		return "/jsp/main.jsp";
	}

}
