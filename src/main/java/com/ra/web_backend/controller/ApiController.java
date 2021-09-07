package com.ra.web_backend.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@RestController
@RequestMapping(value = "/api/v1")
@RequiredArgsConstructor
public class ApiController {
  @GetMapping("/roominfo")
  @ResponseBody
  public HashMap<Object, Object> getRoomInfo(@RequestParam String roomNumber, String HumanCount) {
//    System.out.println(roomNumber);
//    System.out.println(human);

    HashMap<Object, Object> result = new HashMap<Object, Object>();  //리턴값

    result.put("roomNumber", roomNumber);
    result.put("humanNumber", HumanCount);
//    result.put("RESULT", "성공!");
    return result;
  }

}


