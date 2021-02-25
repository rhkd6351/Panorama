package org.zerock.mapper;

import org.zerock.domain.MerchanVO;

import java.util.List;

public interface MerchanMapper {

    public List<MerchanVO> getList();

    public List<MerchanVO> getNewList();

    public List<MerchanVO> getLogoList();

    public List<MerchanVO> getNotLogoList();

    public void insert(MerchanVO vo);

    public int delete(int merchanOid);

    public int update(MerchanVO vo);

    public MerchanVO read(int merchanOid);

}
