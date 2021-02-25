package org.zerock.service;

import org.zerock.domain.OrderVO;

import java.util.List;


public interface OrderService {
    public void register(OrderVO vo);

    public OrderVO get(int orderOid);

    public boolean remove(int orderOid);

    public boolean modify(OrderVO vo);

    public List<OrderVO> getList();

    public List<OrderVO> getListUser(String userId);
}
