package org.zerock.domain;

import lombok.Data;

import java.util.Date;

@Data
public class UserVO {
    private int userOid; //PK, auto increment
    private String userId;
    private String userPw;
    private String name; //SELLER -> BRAND NAME
    private String phone;
    private String birth;
    private String gender;
    private int auth; // 0=ADMIN 1=USER 2=SELLER
    private int point;

    private Date regDate;
}
