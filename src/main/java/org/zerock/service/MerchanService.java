package org.zerock.service;

import org.zerock.domain.MerchanVO;

import java.util.List;


public interface MerchanService {
    public void register(MerchanVO vo);

    public MerchanVO get(int merchanOid);

    public boolean remove(int merchanOid);

    public boolean modify(MerchanVO vo);

    public List<MerchanVO> getList();

    public List<MerchanVO> getNewList();

    public List<MerchanVO> getLogoList();

}
