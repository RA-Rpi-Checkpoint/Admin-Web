package com.ra.web_backend.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter // 게터를 자동 생성!
@ToString // toString() 자동 생성!
@NoArgsConstructor // 디폴트 생성자 넣어 줌!
@Entity // DB 테이블에 저장될 클래스 임!
@Data
public class RPI {
	@Id // 이게 ID임! 즉 사람으로 따지면 주민등록 번호! DB에서는 PK(Primary Key)라고 함!
	@GeneratedValue(strategy = GenerationType.IDENTITY) // DB에서 자동 관리. 매 생성 시, 1, 2, ... 증가
	private Long id;
	@Column // 대표값을 지정 (마치 주민등록번호처럼 title과 content가 달라도 구분짓도록)
	private String robotNum;
	@Column
	private String roomNum;
	@Column
	private String humanCount;
	@Builder // 빌더 패턴 적용! 추후 설명..!
	public RPI(Long id, String robotNum, String roomNum, String humanCount) {
		this.id = id;
		this.robotNum = robotNum;
	    this.roomNum = roomNum;
	    this.humanCount = humanCount;
	 }
}

