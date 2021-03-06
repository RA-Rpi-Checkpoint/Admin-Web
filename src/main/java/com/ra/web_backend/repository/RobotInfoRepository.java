package com.ra.web_backend.repository;

import com.ra.web_backend.entity.RobotInfo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RobotInfoRepository extends JpaRepository<RobotInfo, Integer> {
  RobotInfo findByRobotId(Integer robotId);
}
