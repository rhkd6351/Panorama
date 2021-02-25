package org.zerock.domain;

import lombok.Data;

import java.util.Date;

@Data
public class MerchanVO {

    private int merchanOid; //PK, auto increment
    private String userId;
    private int brandOid;
    private String sort;
    private String name;
    private String content;
    private int price;
    private int logo;

    private Date postDate;
    private Date updateDate;

}
