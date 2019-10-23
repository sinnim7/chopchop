package chop.dao;

import java.util.List;
import chop.domain.RecipeComment;

// DAO 사용 규칙을 정의한다.
public interface RecipeCommentDao {
  int insert(RecipeComment recipecomment) throws Exception;
  List<RecipeComment> findAll() throws Exception;
  int update(RecipeComment recipecomment) throws Exception;
  int delete(int no) throws Exception;
  RecipeComment findBy(int no) throws Exception;
}








