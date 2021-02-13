package org.zerock.service;

import org.zerock.domain.UserVO;

import java.util.List;

public interface UserService {

    public void register(UserVO vo);

    public UserVO get(int oid);

    public boolean remove(int oid);

    public boolean modify(UserVO vo);

    public List<UserVO> getList();

}
