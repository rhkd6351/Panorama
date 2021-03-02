package org.zerock.domain;

import lombok.Data;

import java.util.Date;

@Data
public class OrderVO {

    private int orderOid;
    private int merchanOid;
    private String userId;
    private int count;//수량
    private Date orderDate; //주문날짜
    private String demand; //추가사항
    private String invoice; //운송장번호
    private String state; //현재상황

}
