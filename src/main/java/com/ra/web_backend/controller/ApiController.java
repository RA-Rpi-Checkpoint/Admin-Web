package com.ra.web_backend.controller;
import com.ra.web_backend.dto.RpiDTO;
import com.ra.web_backend.entity.RPI;
import com.ra.web_backend.repository.RpiRepository;

import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;
@Data
@RestController
@RequestMapping(value = "/api/v1")
@RequiredArgsConstructor

public class ApiController {
	
  @Autowired
  private RpiRepository rpirepository;
  
  @GetMapping("/")
  public String list() {
	  return "index.jsp";
  }
  @GetMapping("/roominfo")
  @ResponseBody
  public HashMap<Object, Object> getRoomInfo(@RequestParam String robotid, String roomNumber, String human) {
//    System.out.println(roomNumber);
//    System.out.println(human);

    HashMap<Object, Object> result = new HashMap<Object, Object>();  //리턴값
    result.put("robotNum", robotid);
    result.put("roomNumber", roomNumber);
    result.put("humanNumber", human);
    RpiDTO dto = new RpiDTO();
    RPI rpi = dto.toEntity(robotid, roomNumber, human);
    RPI saved = rpirepository.save(rpi);
    System.out.println(saved.toString());
    System.out.println(result.toString());
 
//    result.put("RESULT", "성공!");
    return result;
  }
  
  
 

}


