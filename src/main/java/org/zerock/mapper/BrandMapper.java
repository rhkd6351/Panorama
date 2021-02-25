package org.zerock.mapper;

import org.zerock.domain.BrandVO;

import java.util.List;

public interface BrandMapper {

    public List<BrandVO> getList();

    public void insert(BrandVO vo);

    public int delete(int brandOid);

    public int update(BrandVO vo);

    public BrandVO read(int merchanOid);
}
