package com.ra.web_backend.dto;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.ra.web_backend.entity.RoomInfo;
import lombok.AllArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@ToString
@JsonNaming(value = PropertyNamingStrategy.SnakeCaseStrategy.class)
public class RoomInfoForm {
    private int robotNum;
    private int roomNum;
    private int humanCount;

    public RoomInfo toEntity(){
        return new RoomInfo(robotNum, roomNum, humanCount);
    }
}
