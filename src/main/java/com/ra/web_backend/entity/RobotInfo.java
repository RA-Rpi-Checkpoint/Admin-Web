package com.ra.web_backend.entity;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import com.ra.web_backend.entity.status.RobotStatus;
import lombok.*;

import javax.persistence.*;
import java.util.Optional;


//@DynamicInsert // insert할 때 null인 필드 제외
@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
@JsonNaming(value = PropertyNamingStrategy.SnakeCaseStrategy.class)
public class RobotInfo extends BaseEntity {
    @Id
    private Integer robotId;

    private Integer recentRoom;

    @Enumerated(value = EnumType.STRING)
    private RobotStatus status;

}
