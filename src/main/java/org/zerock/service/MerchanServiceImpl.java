package org.zerock.service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Service;
import org.zerock.domain.MerchanVO;
import org.zerock.mapper.MerchanMapper;

import java.util.List;

@Service
@Log4j
@AllArgsConstructor
public class MerchanServiceImpl implements MerchanService{

    MerchanMapper mapper;

    @Override
    public void register(MerchanVO vo) {
        log.info("registering Merchan...");
        mapper.insert(vo);
    }

    @Override
    public MerchanVO get(int merchanOid) {
        log.info("getting Merchan...");
        return mapper.read(merchanOid);
    }

    @Override
    public boolean remove(int merchanOid) {
        log.info("deleting Merchan...");
        if(mapper.delete(merchanOid) == 1){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean modify(MerchanVO vo) {
        log.info("modifying Merchan...");
        if(mapper.update(vo) == 1){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public List<MerchanVO> getList() {
        log.info("listing Merchan...");
        return mapper.getList();
    }

    @Override
    public List<MerchanVO> getNewList() {
        log.info("listing Newest Merchan...");
        return mapper.getNewList();
    }

    @Override
    public List<MerchanVO> getLogoList() {
        log.info("listing Logo Merchan...");
        return mapper.getLogoList();
    }

    @Override
    public List<MerchanVO> getNotLogoList() {
        log.info("listing NotLogo Merchan...");
        return mapper.getNotLogoList();
    }
}
