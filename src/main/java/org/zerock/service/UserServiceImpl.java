package org.zerock.service;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.stereotype.Service;
import org.zerock.domain.UserVO;
import org.zerock.mapper.UserMapper;

import java.util.List;

@Log4j
@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

    UserMapper mapper;

    @Override
    public void register(UserVO vo) {

        try{
            mapper.insert(vo);
        }catch(Exception e){
            log.info("회원등록에 실패하였습니다.");
            e.printStackTrace();
        }
        log.info("신규회원 등록이 완료되었습니다.");
    }

    @Override
    public UserVO get(String userId) {
        UserVO vo = mapper.read(userId);
        if(vo == null){
            log.info("회원정보를 가져오지 못하였습니다.");
            return null;
        }
        log.info("회원정보를 성공적으로 로드하였습니다.");
        return vo;
    }

    @Override
    public boolean remove(int oid) {
        if(mapper.delete(oid) == 0){
            log.info("회원정보 제거에 실패하였습니다.");
            return false;
        }else {
            log.info("회원정보 제거에 성공하였습니다.");
            return true;
        }
    }

    @Override
    public boolean modify(UserVO vo) {
        if(mapper.update(vo) == 0){
            log.info("회원정보 변경에 실패하였습니다.");
            return false;
        }else {
            log.info("회원정보 변경에 성하였습니다.");
            return true;
        }
    }

    @Override
    public List<UserVO> getList() {
        log.info("회원정보 로드에 성공하였습니다.");
        return mapper.getList();
    }

    @Override
    public UserVO login(String userId, String userPw) {
        UserVO vo = mapper.read(userId);
        if(vo == null)
            return null;
        if(vo.getUserPw().equals(userPw))
            return vo;
        return null;
    }
}
