package chop.service;

import java.util.List;
import chop.domain.Recipe;

// 역할:
// => 게시물 관리 업무를 수행
// => 트랜잭션 제어
// => 여러 페이지 컨트롤러가 사용한다.
//
public interface RecipeService {
  List<Recipe> list() throws Exception;
  Recipe get(int no) throws Exception;
  void insert(Recipe recipe) throws Exception;
  void update(Recipe recipe) throws Exception;
  void delete(int no) throws Exception;
}










