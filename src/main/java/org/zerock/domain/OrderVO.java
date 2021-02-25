package org.zerock.domain;

import lombok.Data;

import java.util.Date;

@Data
public class OrderVO {

    private int orderOid;
    private int merchanOid;
    private String userId;
    private int count;
    private Date orderDate;
    private String demand;
    private String invoice;
    private String state;


}
