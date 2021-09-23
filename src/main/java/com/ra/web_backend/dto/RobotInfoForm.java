package com.ra.web_backend.dto;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.ra.web_backend.entity.status.RobotStatus;
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
public class RobotInfoForm {

    private Integer robotNum;
    private Integer roomNum;
    private Integer humanCount;
    private RobotStatus status;

    @Builder
    public RobotInfoForm(Integer robotNum, Integer roomNum, Integer humanCount, RobotStatus status) {
        this.robotNum = robotNum;
        this.roomNum = roomNum;
        this.humanCount = humanCount;
        this.status = status;
    }
}
