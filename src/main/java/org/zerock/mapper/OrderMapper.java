package org.zerock.mapper;

import org.zerock.domain.OrderVO;

import java.util.List;

public interface OrderMapper {
    public List<OrderVO> getList();

    public List<OrderVO> getListUser(String userId);

    public void insert(OrderVO vo);

    public int delete(int orderOid);

    public int update(OrderVO vo);

    public OrderVO read(int orderOid);
}
