package org.zerock.domain;

import lombok.Data;

import java.util.Date;

@Data
public class ReviewVO {

    private int reviewOid;
    private int merchanOid;
    private int userOid;
    private String content;
    private int score;

}
