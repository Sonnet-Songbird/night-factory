CREATE TABLE theme
(
    room_id        INT PRIMARY KEY,
    name           VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    description    VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    difficulty     INT NOT NULL,
    alt_difficulty VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    estimated_time VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
    price          INT NOT NULL,
    genre          VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


CREATE OR REPLACE TABLE schedule
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    room_id    INT  NOT NULL,
    start_time TIME NOT NULL,
    UNIQUE (room_id, start_time),
    FOREIGN KEY (room_id) REFERENCES theme (room_id)
);


CREATE OR REPLACE TABLE reservations
(
    id               BINARY(16)   PRIMARY KEY,
    schedule_id      INT          NOT NULL,
    owner            VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ,
    reservation_date DATE         NOT NULL,
    phone_number     VARCHAR(255) ,
    number_of_people INT          ,
    reservation_at   TIMESTAMP    NOT NULL,
    amount           INT          ,
    payment_id       BINARY(16) COMMENT '결제 요청시 가맹점에서 채번하는 결제 아이디',
    imp_uid          VARCHAR(255) COMMENT '결제 완료시 OnePort에서 채번 하는 결제 아이디',
    state            VARCHAR(255),
    paid_at          TIMESTAMP,
    receipt_url      VARCHAR(2047),
    FOREIGN KEY (schedule_id) REFERENCES schedule (id)
);


CREATE TABLE `board` (
                         `id` int(11) NOT NULL AUTO_INCREMENT,
                         `author` varchar(255) NOT NULL,
                         `title` varchar(255) NOT NULL,
                         `content` varchar(255) NOT NULL,
                         `created_date` datetime DEFAULT NULL,
                         `modified_date` datetime DEFAULT NULL,
                         `password` varchar(255) DEFAULT NULL,
                         `phone` varchar(20) DEFAULT NULL,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;


ALTER TABLE schedule
    ADD COLUMN date DATE NULL;

INSERT INTO schedule (room_id, start_time, date) VALUES
                                                     (101, '09:00:00', NULL),
                                                     (101, '10:30:00', NULL),
                                                     (101, '12:00:00', NULL),
                                                     (101, '12:30:00', NULL),
                                                     (101, '15:00:00', NULL),
                                                     (101, '16:30:00', NULL),
                                                     (101, '18:00:00', NULL),
                                                     (101, '19:30:00', NULL),
                                                     (101, '21:00:00', NULL),
                                                     (102, '09:20:00', NULL),
                                                     (102, '10:40:00', NULL),
                                                     (102, '12:00:00', NULL),
                                                     (102, '13:20:00', NULL),
                                                     (102, '14:40:00', NULL),
                                                     (102, '16:00:00', NULL),
                                                     (102, '17:20:00', NULL),
                                                     (102, '18:40:00', NULL),
                                                     (102, '20:00:00', NULL),
                                                     (103, '09:00:00', NULL),
                                                     (103, '10:20:00', NULL),
                                                     (103, '11:40:00', NULL),
                                                     (103, '13:00:00', NULL),
                                                     (103, '14:20:00', NULL),
                                                     (103, '15:40:00', NULL),
                                                     (103, '17:00:00', NULL),
                                                     (103, '18:20:00', NULL),
                                                     (103, '21:00:00', NULL),
                                                     (104, '09:20:00', NULL),
                                                     (104, '10:40:00', NULL),
                                                     (104, '12:00:00', NULL),
                                                     (104, '13:20:00', NULL),
                                                     (104, '14:40:00', NULL),
                                                     (104, '16:00:00', NULL),
                                                     (104, '17:20:00', NULL),
                                                     (104, '18:40:00', NULL),
                                                     (104, '20:00:00', NULL);



# 지금은 이래도 되지만 실제 운영 서버에서는 OR REPLACE나 IF NOT EXIST로 DDL을 관리하는 건 위험해요.