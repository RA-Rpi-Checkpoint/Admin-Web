package com.ra.web_backend.entity;

import com.ra.web_backend.entity.status.RoomStatus;
import lombok.*;

import javax.persistence.*;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
public class RoomInfo extends BaseEntity{
    @Id
    @Column(name = "room_id")
    private Integer roomId;

    @Column(name = "human_count")
    private int humanCount;

    @Enumerated(value = EnumType.STRING)
    private RoomStatus status;
}
