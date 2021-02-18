package org.zerock.domain;

import lombok.Data;

import java.util.Date;

@Data
public class BagVO {

    private int bagOid;
    private int userOid;
    private int merchanOid;
    private int count;
    private String demand;

}
