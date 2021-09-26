package com.ra.web_backend.entity;

import com.ra.web_backend.entity.status.RoomStatus;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;

@Entity
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = true)
public class RoomInfo extends BaseEntity {
  @Id
  @Column(name = "room_id")
  private Integer roomId;

  @Column(name = "human_count")
  private int humanCount;

  @Enumerated(value = EnumType.STRING)
  private RoomStatus status;
}
