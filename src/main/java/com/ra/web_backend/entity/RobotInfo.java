package com.ra.web_backend.entity;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.ra.web_backend.entity.status.RobotStatus;
import lombok.*;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Optional;


//@DynamicInsert // insert할 때 null인 필드 제외
@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@JsonNaming(value = PropertyNamingStrategy.SnakeCaseStrategy.class)
public class RobotInfo extends BaseEntity {
    @Id
    @Column(name = "robot_id")
    private Integer robotId;

    @Column(name = "recent_room")
    private Integer recentRoom;

    @Enumerated(value = EnumType.STRING)
    private RobotStatus status;

}
