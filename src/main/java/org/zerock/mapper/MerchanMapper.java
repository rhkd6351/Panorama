package org.zerock.mapper;

import org.zerock.domain.MerchanVO;
import org.zerock.domain.UserVO;

import java.util.List;

public interface MerchanMapper {

    public List<MerchanVO> getList();

    public void insert(MerchanVO vo);

    public int delete(int merchanOid);

    public int update(MerchanVO vo);

    public MerchanVO read(int merchanOid);

}
