package com.ra.web_backend.controller;

import com.ra.web_backend.dto.ResponseDto;
import com.ra.web_backend.entity.RobotInfo;
import com.ra.web_backend.entity.status.RobotStatus;
import com.ra.web_backend.service.RoomRobotService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@Slf4j
@RestController
@RequestMapping(value = "/api/v1", produces = {MediaType.APPLICATION_JSON_VALUE})
@RequiredArgsConstructor
public class ApiController {

    final RoomRobotService roomRobotService;


//    @GetMapping("/roominfo")
//    @ResponseBody
//    public ResponseDto<Page<?>> getAllRoomInfo(final Pageable pageable) {
//        ResponseDto<?> result = null;
//        return new ResponseDto<>("0000", "성공", "조회성공", roomService.getAllRobotInfo(pageable));
//    }


    @GetMapping("/roominfo/{robotId}")
    @ResponseBody
    public ResponseDto<?> getRoomInfo(@PathVariable("robotId") int robotId) {
        ResponseDto<?> result = null;

        // robot1의 정보
        Optional<RobotInfo> robotInfo = roomRobotService.getRobotInfo(robotId);
        if (robotInfo.isPresent()) {
            RobotInfo robot = robotInfo.get();
            result = new ResponseDto<>("0000", "성공", "조회성공", robot);
        } else {
            result = new ResponseDto<>("0400", "실패", "조회실패", null);
        }
        return result;
    }

    @RequestMapping(value = "/roominfo", method = RequestMethod.GET)
    public ResponseDto<?> updateRoomInfo(@RequestParam("robotNum") int robotNum, @RequestParam("roomNum") int roomNum, @RequestParam("humanCount") int humanCount, @RequestParam("status") RobotStatus status) throws Exception {
        ResponseDto<?> result = null;
        String data = "robotNum: " + robotNum + " roomNum: " + roomNum + " humanCount: " + humanCount + " status: " + status;
//        System.out.println(robotNum);
//        System.out.println(roomNum);
//        System.out.println(humanCount);
//        System.out.println(status);
        try {
            roomRobotService.editRobotInfo(robotNum, roomNum, status);
            roomRobotService.editRoomInfo(roomNum, humanCount);
            result = new ResponseDto<>("0000", "수정성공", "수정완료", data);
        } catch (Exception e) {
            result = new ResponseDto<>("0400", "수정실패", "로봇정보를 찾을 수 없음", e);
        }
        return result;
    }

}


