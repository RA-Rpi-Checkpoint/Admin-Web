package com.ra.web_backend.service;

import com.ra.web_backend.entity.RoomInfo;
import com.ra.web_backend.repository.RoomInfoRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;


@AllArgsConstructor
@Service
public class RoomService {

    final RoomInfoRepository roomInfoRepository;


    //    모든로봇정보 조회
    public Page<RoomInfo> getAllRobotInfo(final Pageable pageable) {
        return roomInfoRepository.findAll(pageable);
    }

    //    로봇정보 조회
    public Optional<RoomInfo> getRobotInfo(int key) {
        return roomInfoRepository.findById(key);
    }

    //    로봇정보 업데이트
    @Transactional
    public void editRobotInfo(int robotNum, int roomNum, int humanCount, boolean status) throws Exception {
        Optional<RoomInfo> oRobot = roomInfoRepository.findById(robotNum);
        if (oRobot.isPresent()) {
            RoomInfo robot = oRobot.get();
            robot.setRobotNum(robotNum);
            robot.setRoomNum(roomNum);
            robot.setHumanCount(humanCount);
            robot.setStatus(status);
            roomInfoRepository.save(robot);
        } else {
            throw new Exception();
        }
    }
}
