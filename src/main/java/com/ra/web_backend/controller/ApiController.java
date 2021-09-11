package com.ra.web_backend.controller;

import com.ra.web_backend.dto.ResponseDto;
import com.ra.web_backend.dto.RoomInfoForm;
import com.ra.web_backend.entity.RoomInfo;
import com.ra.web_backend.repository.RoomInfoRepository;
import com.ra.web_backend.service.RoomService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.MediaType;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.tags.Param;

import java.util.HashMap;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

@Slf4j
@RestController
@RequestMapping(value = "/api/v1", produces = {MediaType.APPLICATION_JSON_VALUE})
@RequiredArgsConstructor
public class ApiController {

    final RoomService roomService;


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
        Optional<RoomInfo> robotInfo = roomService.getRobotInfo(robotId);
        if (robotInfo.isPresent()) {
            RoomInfo robot = robotInfo.get();
            result = new ResponseDto<>("0000", "성공", "조회성공", robot);
        } else {
            result = new ResponseDto<>("0400", "실패", "조회실패", null);
        }
        return result;
    }

    @RequestMapping(value = "/roominfo", method = RequestMethod.GET)
    public ResponseDto<?> updateRoomInfo(@RequestParam("robotNum") int robotNum, @RequestParam("roomNum") int roomNum, @RequestParam("humanCount") int humanCount, @RequestParam("status") boolean status) throws Exception {
        ResponseDto<?> result = null;
        String data = "robotNum: " + robotNum + " roomNum: " + roomNum + " humanCount: " + humanCount + " status: " + status;
//        System.out.println(robotNum);
//        System.out.println(roomNum);
//        System.out.println(humanCount);
//        System.out.println(status);
        try {
            roomService.editRobotInfo(robotNum, roomNum, humanCount, status);
            result = new ResponseDto<>("0000", "수정성공", "수정완료", data);
        } catch (Exception e) {
            result = new ResponseDto<>("0400", "수정실패", "로봇정보를 찾을 수 없음", e);
        }
        return result;
    }

}


