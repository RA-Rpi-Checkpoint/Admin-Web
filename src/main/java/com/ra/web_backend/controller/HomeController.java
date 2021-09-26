package com.ra.web_backend.controller;

import com.ra.web_backend.dto.ResponseDto;
import com.ra.web_backend.entity.RobotInfo;
import com.ra.web_backend.entity.RoomInfo;
import com.ra.web_backend.entity.status.RobotStatus;
import com.ra.web_backend.entity.status.RoomStatus;
import com.ra.web_backend.repository.RobotInfoRepository;
import com.ra.web_backend.repository.RoomInfoRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@RequiredArgsConstructor
public class HomeController {


  private final RobotInfoRepository robotInfoRepository;
  private final RoomInfoRepository roomInfoRepository;


  @GetMapping({"", "/"})
  public String index(Model model) {

    model.addAttribute("map", "../../images/map0.png");

    // Room table값 변경
    changeRoomInfo(1, model);
    changeRoomInfo(2, model);
    changeRoomInfo(3, model);
    changeRoomInfo(4, model);


    // Robot table값 변경
    changeRobotInfo(1, model);
    changeRobotInfo(2, model);
    changeRobotInfo(3, model);


    System.out.println(model);
    return "index";
  }

  private void changeRoomInfo(int roomNum, Model model) {
    RoomInfo room = roomInfoRepository.findByRoomId(roomNum);
    int humanCount = room.getHumanCount();
    RoomStatus status = room.getStatus();

    if (humanCount == 0) {
      model.addAttribute("human" + roomNum, "No one was found.");
    } else {
      model.addAttribute("human" + roomNum, humanCount + " people were found in this room.");
    }


    model.addAttribute("roomStatus" + roomNum, status);
    if (status == RoomStatus.COMPLETE) {
      model.addAttribute("roomStatusClass" + roomNum, "badge-complete");
      model.addAttribute("map", "../../images/map"+roomNum+".png");
      float workingRate = (float)roomNum*100/4;
      model.addAttribute("workingRate", workingRate);
    }
    else if (status == RoomStatus.WAITING) model.addAttribute("roomStatusClass" + roomNum, "badge-pause");

  }

  public void changeRobotInfo(int robotNum, Model model) {
    model.addAttribute("robotLocation" + robotNum, robotInfoRepository.findByRobotId(robotNum).getRecentRoom());
    model.addAttribute("robotStatus" + robotNum, robotInfoRepository.findByRobotId(robotNum).getStatus());

    RobotInfo robot = robotInfoRepository.findByRobotId(robotNum);
    RobotStatus status = robot.getStatus();
    if (status == RobotStatus.COMPLETE) model.addAttribute("robotStatusClass" + robotNum, "badge-complete");
    else if (status == RobotStatus.WAITING) model.addAttribute("robotStatusClass" + robotNum, "badge-pause");
    else if (status == RobotStatus.FAILURE) model.addAttribute("robotStatusClass" + robotNum, "badge-pending");
    else if (status == RobotStatus.RUNNING) {
      model.addAttribute("robotStatusClass" + robotNum, "badge-running");
      if (robotNum ==2) {
        model.addAttribute("robotStatusClass1", "badge-pending");
        model.addAttribute("robotStatus1", "FAILURE");
        model.addAttribute("robotStatusClass2", "badge-complete");
        model.addAttribute("robotStatus2", "COMPLETE");
      }


    }


    if (status == RobotStatus.FAILURE) model.addAttribute("warningSignal" + robotNum, "ml-status-circle error fa");
    else if (status == RobotStatus.COMPLETE)
      model.addAttribute("warningSignal" + robotNum, "ml-status-circle proccessed fa");
    if (robotNum == 2) {
      if (status == RobotStatus.RUNNING) {
        model.addAttribute("warningSignal1", "ml-status-circle error fa");
        model.addAttribute("warningSignal" + robotNum, "ml-status-circle proccessed fa");
      }
    }

  }
}