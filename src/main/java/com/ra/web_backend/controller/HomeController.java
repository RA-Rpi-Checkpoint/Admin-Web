package com.ra.web_backend.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

  @GetMapping({"", "/"})
  public String index() { // 컨트롤러에서 세션을 어떻게 찾는지?
    // /WEB=INF/views/index.jsp
//        System.out.println("로그인 사용자 아이디: " + principal.getUsername());
    return "index";

  }

}