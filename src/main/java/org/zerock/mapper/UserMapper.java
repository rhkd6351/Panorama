package org.zerock.mapper;

import org.zerock.domain.UserVO;

import java.util.List;

public interface UserMapper {
    public List<UserVO> getList();

    public void insert(UserVO vo);

    public int delete(String userId);

    public int update(UserVO vo);

    public UserVO read(String userId);
}
