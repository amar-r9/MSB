package com.msb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeGroundController {

	@RequestMapping(value = "/homeground", method = RequestMethod.GET)
	public String home(ModelMap map) {
		return "/homeground/index";
	}
	
	@RequestMapping(value = "/homeground/index", method = RequestMethod.GET)
	public String index(ModelMap map) {
		return "/homeground/index";
	}
	
}
