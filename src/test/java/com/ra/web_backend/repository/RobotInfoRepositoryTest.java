package com.ra.web_backend.repository;

import com.ra.web_backend.entity.RobotInfo;
import com.ra.web_backend.entity.RoomInfo;
import com.ra.web_backend.entity.status.RobotStatus;
import com.ra.web_backend.entity.status.RoomStatus;
import com.ra.web_backend.service.RoomRobotService;
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

    @Autowired
    private RoomRobotService roomRobotService;

    @Test
    void robotTest() throws Exception {
        int robotNum = 1;
        int roomNum =2;
        RobotStatus status = RobotStatus.RUNNING;
        int humanCount =2;
        roomRobotService.editRobotInfo(robotNum, roomNum, status);
        roomRobotService.editRoomInfo(roomNum, humanCount);

    }

    @Test
    void roomTest() {


    }
}