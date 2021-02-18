package org.zerock.domain;

import lombok.Data;

import java.util.Date;

@Data
public class MerchanVO {

    private int merchanOid; //PK, auto increment
    private int userOid;
    private String sort;
    private String name;
    private String content;
    private int price;
    private int logo;

    private Date postDate;
    private Date updateDate;

}
