DROP TABLE IF EXISTS room_info;
CREATE TABLE room_info (
    robot_num INT NOT NULL,
    room_num INT,
    human_count INT,
    PRIMARY KEY(robot_num)
);
