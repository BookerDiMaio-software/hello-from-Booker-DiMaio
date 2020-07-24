package com.bookerdimaio;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController {

	@RequestMapping("/")
	public String index() {
		return "Greetings from team ThanOS via Kubernetes. We'd be more than happy to build your next Kubernetes application!";
	}

}
