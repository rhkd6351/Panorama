package org.zerock.domain;

import lombok.Data;

import java.util.Date;

@Data
public class OrderVO {

    private int orderOid;
    private int merchanOid;
    private int count;
    private int price;
    private Date orderDate;
    private String demand;


}
