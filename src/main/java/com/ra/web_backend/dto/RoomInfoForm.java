package com.ra.web_backend.dto;

import com.ra.web_backend.entity.RoomInfo;
import lombok.AllArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@ToString
public class RoomInfoForm {
    private int robotNum;
    private int roomNum;
    private int humanCount;

    public RoomInfo toEntity(){
        return new RoomInfo(robotNum, roomNum, humanCount);
    }
}
