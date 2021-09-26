package com.ra.web_backend.repository;

import com.ra.web_backend.entity.RoomInfo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomInfoRepository extends JpaRepository<RoomInfo, Integer> {
  RoomInfo findByRoomId(Integer roomId);

}
