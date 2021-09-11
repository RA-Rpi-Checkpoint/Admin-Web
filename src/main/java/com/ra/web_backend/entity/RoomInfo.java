package com.ra.web_backend.entity;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder // 빌더 패턴
// ORM -> JAVA Object -> 테이블로 매핑해주는 기술
@Entity // User 클래스가 MySQL에 테이블이 생성이 된다.
//@DynamicInsert // insert할 때 null인 필드 제외
@JsonNaming(value = PropertyNamingStrategy.SnakeCaseStrategy.class)
public class RoomInfo {

    @Id
    private Integer robotNum;

    @Column
    private Integer roomNum;

    @Column
    private Integer humanCount;

    @Column
    private Boolean status;
}
