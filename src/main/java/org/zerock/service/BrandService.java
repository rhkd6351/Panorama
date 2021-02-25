package org.zerock.service;

import org.zerock.domain.BrandVO;

import java.util.List;


public interface BrandService {
    public void register(BrandVO vo);

    public BrandVO get(int brandOid);

    public boolean remove(int brandOid);

    public boolean modify(BrandVO vo);

    public List<BrandVO> getList();
}
