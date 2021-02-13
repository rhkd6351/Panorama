package org.zerock.domain;

import lombok.Data;

@Data
public class UserVO {
    private int userOid; //PK, auto increment
    private String userId;
    private String userPw;
    private String email;
    private String phone;
    private int gender; // 1=MAN 2=WOMAN
    private int auth; // 0=ADMIN 1=USER 2=SELLER
}
