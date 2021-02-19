package org.zerock.domain;

import lombok.Data;

@Data
public class BrandVO {
    private int brandOid;
    private int userOid;
    private String name;
    private String content;
}
