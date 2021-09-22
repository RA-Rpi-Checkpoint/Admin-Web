package com.ra.web_backend.repository;

import com.ra.web_backend.entity.RobotInfo;
import com.ra.web_backend.entity.RoomInfo;
import com.ra.web_backend.entity.status.RobotStatus;
import com.ra.web_backend.entity.status.RoomStatus;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class RobotInfoRepositoryTest {
    @Autowired
    private RobotInfoRepository robotInfoRepository;
    @Autowired
    private RoomInfoRepository roomInfoRepository;

    @Test
    void robotFindTest() {
        System.out.println("Test");
        RobotInfo robotInfo = new RobotInfo();
        robotInfo.setRobotId(1);
        robotInfo.setRecentRoom(2);
        robotInfo.setStatus(RobotStatus.COMPLETE);

        robotInfoRepository.save(robotInfo);

        robotInfo.setRobotId(2);
        robotInfo.setRecentRoom(2);
        robotInfo.setStatus(RobotStatus.COMPLETE);

        robotInfoRepository.save(robotInfo);
        robotInfoRepository.findAll().forEach(System.out::println);

    }

    @Test
    void roomTest() {
        RoomInfo roomInfo = new RoomInfo();
        roomInfo.setRoomId(2);
        roomInfo.setHumanCount(2);
        roomInfo.setStatus(RoomStatus.PENDING);
        roomInfoRepository.save(roomInfo);

        roomInfoRepository.findAll().forEach(System.out::println);

    }
}