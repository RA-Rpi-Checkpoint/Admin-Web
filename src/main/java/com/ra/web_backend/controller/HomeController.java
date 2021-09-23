package com.ra.web_backend.controller;

import com.ra.web_backend.entity.status.RobotStatus;
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
    changeRoomInfo(1, model);
    changeRoomInfo(2, model);
    changeRoomInfo(3, model);
    changeRoomInfo(4, model);


    // Robot table값 변경
    changeRobotInfo(1, model);
    changeRobotInfo(2, model);
    changeRobotInfo(3, model);

    return "index";

  }

  private void changeRoomInfo(int roomNum, Model model) {
    int humanCount = roomInfoRepository.findByRoomId(roomNum).getHumanCount();

    if (humanCount == 0) {
      model.addAttribute("human"+roomNum, "No one was found.");
    }
    else {
      model.addAttribute("human"+roomNum, humanCount+" people were found in this room.");
    }

    RoomStatus status = roomInfoRepository.findByRoomId(roomNum).getStatus();
    model.addAttribute("roomStatus"+roomNum, status);
    if (status == RoomStatus.COMPLETE) model.addAttribute("roomStatusClass"+roomNum,"badge-complete");
    else if (status == RoomStatus.WAITING) model.addAttribute("roomStatusClass"+roomNum,"badge-pause");

  }

  private void changeRobotInfo(int robotNum, Model model) {
    model.addAttribute("robotLocation"+robotNum, robotInfoRepository.findByRobotId(robotNum).getRecentRoom());
    model.addAttribute("robotStatus"+robotNum,robotInfoRepository.findByRobotId(robotNum).getStatus());

    RobotStatus status = robotInfoRepository.findByRobotId(robotNum).getStatus();
    if (status == RobotStatus.COMPLETE) model.addAttribute("robotStatusClass"+robotNum,"badge-complete");
    else if (status == RobotStatus.WAITING) model.addAttribute("robotStatusClass"+robotNum,"badge-pause");
    else if (status == RobotStatus.FAILURE) model.addAttribute("robotStatusClass"+robotNum,"badge-pending");
    else if (status == RobotStatus.RUNNING) model.addAttribute("robotStatusClass"+robotNum,"badge-running");

    if (status == RobotStatus.FAILURE) model.addAttribute("warningSignal"+robotNum, "ml-status-circle error fa");
    else if(status == RobotStatus.COMPLETE) model.addAttribute("warningSignal"+robotNum, "ml-status-circle proccessed fa");
  }
}