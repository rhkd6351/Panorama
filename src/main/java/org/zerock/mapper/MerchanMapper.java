package org.zerock.mapper;

import org.apache.ibatis.annotations.Param;
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

    public int updateUser(@Param("merchanOid")int merchanOid, @Param("userId")String userId);

    public int updateBrand(@Param("merchanOid")int merchanOid, @Param("brandOid")int brandOid);

    public MerchanVO read(int merchanOid);

    List<MerchanVO> getListAccordingToBrandOid(int brandOid);
}
