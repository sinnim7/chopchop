package chop.dao;

import java.util.List;
import chop.domain.Member;

// DAO 사용 규칙을 정의한다.
public interface MemberDao {
  int insert(Member member) throws Exception;
  List<Member> findAll() throws Exception;
  Member findBy(int no) throws Exception;
  int update(Member member) throws Exception;
  int delete(int no) throws Exception;
}








