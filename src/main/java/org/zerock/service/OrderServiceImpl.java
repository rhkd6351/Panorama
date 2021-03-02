package org.zerock.service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Service;
import org.zerock.domain.OrderVO;
import org.zerock.mapper.OrderMapper;

import java.util.List;

@Service
@Log4j
@AllArgsConstructor
public class OrderServiceImpl implements OrderService{

    OrderMapper mapper;

    @Override
    public void register(OrderVO vo) {
        log.info("registering order...");
        mapper.insert(vo);
    }

    @Override
    public OrderVO get(int orderOid) {
        log.info("getting order...");
        return mapper.read(orderOid);
    }

    @Override
    public boolean remove(int orderOid) {
        log.info("deleting order...");
        if(mapper.delete(orderOid) == 1){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public boolean modify(OrderVO vo) {
        log.info("modifying order...");
        if(mapper.update(vo) == 1){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public List<OrderVO> getList() {
        log.info("listing order...");
        return mapper.getList();
    }

    @Override
    public List<OrderVO> getListUser(String userId) {
        log.info("listing order_User...");
        return mapper.getListUser(userId);
    }

    @Override
    public List<OrderVO> getListAccordingToBrandOid(int brandOid) {
        return mapper.getListAccordingToBrandOid(brandOid);
    }

}
