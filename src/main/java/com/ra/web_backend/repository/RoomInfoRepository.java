package com.ra.web_backend.repository;

import com.ra.web_backend.entity.RoomInfo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface RoomInfoRepository extends JpaRepository<RoomInfo, Integer> {

}
