package com.ra.web_backend.entity;


import lombok.AllArgsConstructor;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
@AllArgsConstructor
@ToString
public class RoomInfo {

    @Id
    private int roomNumber;

    @Column
    private int humanCount;

    public RoomInfo() {

    }
}
