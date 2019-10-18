package chop.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import chop.dao.MemberDao;
import chop.domain.Member;
import chop.service.MemberService;

// BoardService 기본 구현체 
//
@Service
public class DefaultMemberService implements MemberService {

  @Resource
  private MemberDao memberDao;

  
  @Override
  public void insert(Member member) throws Exception {
    memberDao.insert(member);
  }
  
  @Override
  public void delete(int no) throws Exception {
    if (memberDao.delete(no) == 0) {
      throw new Exception("해당 데이터가 없습니다.");
    }
  }

  @Override
  public Member get(int no) throws Exception {
    Member member = memberDao.findBy(no);
    if (member == null) {
      throw new Exception("해당 번호의 데이터가 없습니다!");
    } 
    return member;
  }

  @Override
  public List<Member> list() throws Exception {
    return memberDao.findAll();
  }

  
  @Override
  public void update(Member member) throws Exception {
    memberDao.update(member);
  }
  
}
