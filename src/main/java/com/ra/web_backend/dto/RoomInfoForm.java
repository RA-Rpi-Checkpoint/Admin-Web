package com.ra.web_backend.dto;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.stereotype.Service;

@Data
@Builder // 빌더 패턴
@Service
@ToString
@NoArgsConstructor
@JsonNaming(value = PropertyNamingStrategy.SnakeCaseStrategy.class)
public class RoomInfoForm {

    private Integer robotNum;
    private Integer roomNum;
    private Integer humanCount;
    private Boolean status;

    @Builder
    public RoomInfoForm(Integer robotNum, Integer roomNum, Integer humanCount, Boolean status) {
        this.robotNum = robotNum;
        this.roomNum = roomNum;
        this.humanCount = humanCount;
        this.status = status;
    }
}
