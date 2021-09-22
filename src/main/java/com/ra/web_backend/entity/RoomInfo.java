package com.ra.web_backend.entity;

import com.ra.web_backend.entity.status.RoomStatus;
import lombok.*;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
public class RoomInfo extends BaseEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer RoomId;

    private int humanCount;

    @Enumerated(value = EnumType.STRING)
    private RoomStatus status;
}
