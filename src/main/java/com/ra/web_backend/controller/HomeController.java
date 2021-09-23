package com.ra.web_backend.controller;

import com.ra.web_backend.entity.status.RoomStatus;
import com.ra.web_backend.repository.RobotInfoRepository;
import com.ra.web_backend.repository.RoomInfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

  @Autowired
  private RobotInfoRepository robotInfoRepository;
  @Autowired
  private RoomInfoRepository roomInfoRepository;


  @GetMapping({"", "/"})
  public String index(Model model) {

    // Room table값 변경
    model.addAttribute("human1",changeRoomHuman(1));
    model.addAttribute("human2",changeRoomHuman(2));
    model.addAttribute("human3",changeRoomHuman(3));
    model.addAttribute("human4",changeRoomHuman(4));

    model.addAttribute("roomStatus1",roomInfoRepository.findByRoomId(1).getStatus());
    model.addAttribute("roomStatus2",roomInfoRepository.findByRoomId(2).getStatus());
    model.addAttribute("roomStatus3",roomInfoRepository.findByRoomId(3).getStatus());
    model.addAttribute("roomStatus4",roomInfoRepository.findByRoomId(4).getStatus());

    // Robot table값 변경
    model.addAttribute("robotLocation1", robotInfoRepository.findByRobotId(1).getRecentRoom());
    model.addAttribute("robotLocation2", robotInfoRepository.findByRobotId(2).getRecentRoom());

    model.addAttribute("robotStatus1",robotInfoRepository.findByRobotId(1).getStatus());
    model.addAttribute("robotStatus2",robotInfoRepository.findByRobotId(2).getStatus());
    model.addAttribute("robotStatus3",robotInfoRepository.findByRobotId(3).getStatus());

    return "index";

  }

  private String changeRoomHuman(int roomNum) {
    int humanCount = roomInfoRepository.findByRoomId(roomNum).getHumanCount();

    if (humanCount == 0) {
      return "No one was found.";
    }
    else {
      return humanCount+" people were found in this room.";
    }
  }


}