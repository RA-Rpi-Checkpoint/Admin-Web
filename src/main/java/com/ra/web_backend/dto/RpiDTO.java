package com.ra.web_backend.dto;

import com.ra.web_backend.entity.RPI;

import lombok.Data;

@Data // 생성자(디폴트, All), 게터, 세터, toString 등 다 만들어 줌!
public class RpiDTO {
	private String robotNum;
    private String roomNum;
    private String humanCount;
    
    public String getRobotNum() {
    	return robotNum;
    }
    public String getRoomNum() {
    	return roomNum;
    }
    public String gethumanCount() {
    	return humanCount;
    }
    // 빌더 패턴으로 객체 생성! 생성자의 변형. 입력 순서가 일치하지 않아도 됨.
    public RPI toEntity(String robotnumber,String roomNum,String humanCount) {
        return RPI.builder()
        		.id(null)
                .robotNum(robotnumber)
                .roomNum(roomNum)
                .humanCount(humanCount)
                .build();
    }
}
