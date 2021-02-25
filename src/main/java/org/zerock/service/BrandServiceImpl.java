package org.zerock.service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Service;
import org.zerock.domain.BrandVO;
import org.zerock.mapper.BrandMapper;

import java.util.List;

@Service
@Log4j
@AllArgsConstructor
public class BrandServiceImpl implements BrandService{

    BrandMapper mapper;

    @Override
    public void register(BrandVO vo) {
        log.info("registering brand...");
        mapper.insert(vo);
    }

    @Override
    public BrandVO get(int brandOid) {
        log.info("getting brand...");
        return mapper.read(brandOid);
    }

    @Override
    public boolean remove(int brandOid) {
        log.info("deleting brand...");
        if(mapper.delete(brandOid) == 1){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean modify(BrandVO vo) {
        log.info("modifying brand...");
        if(mapper.update(vo) == 1){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public List<BrandVO> getList() {
        log.info("listing brand...");
        return mapper.getList();
    }

    @Override
    public List<BrandVO> getSpecList(String userId) {
        return mapper.getSpecList(userId);
    }
}
