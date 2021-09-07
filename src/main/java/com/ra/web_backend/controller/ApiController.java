package com.ra.web_backend.controller;

import com.ra.web_backend.dto.RoomInfoForm;
import com.ra.web_backend.entity.RoomInfo;
import com.ra.web_backend.repository.RoomInfoRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@Slf4j
@RestController
@RequestMapping(value = "/api/v1")
@RequiredArgsConstructor
public class ApiController {

  @Autowired
  private RoomInfoRepository roomInfoRepository;


  @GetMapping("/roominfo")
  @ResponseBody
  public RoomInfo getRoomInfo(RoomInfoForm form) {
    log.info(form.toString());

    RoomInfo roomInfo = form.toEntity();
    log.info(roomInfo.toString());
//
    RoomInfo saved = roomInfoRepository.save(roomInfo);
    log.info(saved.toString());



    return roomInfo;
  }

}


