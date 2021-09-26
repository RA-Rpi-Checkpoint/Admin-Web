package com.ra.web_backend.service;

import com.ra.web_backend.entity.RobotInfo;
import com.ra.web_backend.entity.RoomInfo;
import com.ra.web_backend.entity.status.RobotStatus;
import com.ra.web_backend.entity.status.RoomStatus;
import com.ra.web_backend.repository.RobotInfoRepository;
import com.ra.web_backend.repository.RoomInfoRepository;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;


@AllArgsConstructor
@Service
public class RoomRobotService {

  @Autowired
  private RobotInfoRepository robotInfoRepository;
  @Autowired
  private RoomInfoRepository roomInfoRepository;


  //    모든로봇정보 조회
  public Page<RobotInfo> getAllRobotInfo(final Pageable pageable) {
    return robotInfoRepository.findAll(pageable);
  }


  // 로봇정보 조회
  public Optional<RobotInfo> getRobotInfo(int key) {
    return robotInfoRepository.findById(key);
  }

  // 로봇정보 업데이트
  @Transactional
  public void editRobotInfo(int robotNum, int roomNum, RobotStatus status) throws Exception {
    RobotInfo robot = robotInfoRepository.findById(robotNum).orElseThrow(RuntimeException::new);
    robot.setRobotId(robotNum);
    robot.setRecentRoom(roomNum);
    robot.setStatus(status);
    robotInfoRepository.save(robot);

    System.out.println("Robot " + robotNum + " is updated");
    robotInfoRepository.findAll().forEach(System.out::println);
  }

  // 방정보 업데이트
  @Transactional
  public void editRoomInfo(int roomNum, int humanCount) {
    RoomInfo room = roomInfoRepository.findById(roomNum).orElseThrow(RuntimeException::new);
    room.setHumanCount(humanCount);
    room.setStatus(RoomStatus.COMPLETE);
    roomInfoRepository.save(room);

    System.out.println("Room " + roomNum + " is updated");
    roomInfoRepository.findAll().forEach(System.out::println);
  }

}
