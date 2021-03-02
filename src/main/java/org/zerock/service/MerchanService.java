package org.zerock.service;

import org.zerock.domain.MerchanVO;

import java.util.List;


public interface MerchanService {
    public void register(MerchanVO vo);

    public MerchanVO get(int merchanOid);

    public boolean remove(int merchanOid);

    public boolean modify(MerchanVO vo);

    public boolean modifyUser(int merchanOid, String userId);

    public boolean modifyBrand(int merchanOid, int brandOid);

    public List<MerchanVO> getList();

    public List<MerchanVO> getNewList();

    public List<MerchanVO> getLogoList();

    public List<MerchanVO> getNotLogoList();

    public List<MerchanVO> getListAccordingToBrandOid(int brandOid);

}
