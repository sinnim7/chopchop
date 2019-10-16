package chop.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import chop.dao.RecipeCommentDao;
import chop.domain.RecipeComment;
import chop.service.RecipeCommentService;

// BoardService 기본 구현체 
//
@Service
public class DefaultRecipeCommentService implements RecipeCommentService {

  @Resource
  private RecipeCommentDao recipeCommentDao;

  
  @Override
  public void insert(RecipeComment recipeComment) throws Exception {
    recipeCommentDao.insert(recipeComment);
  }
  
  @Override
  public void delete(int no) throws Exception {
    if (recipeCommentDao.delete(no) == 0) {
      throw new Exception("해당 데이터가 없습니다.");
    }
  }

  

  @Override
  public List<RecipeComment> list() throws Exception {
    return recipeCommentDao.findAll();
  }

  
  @Override
  public void update(RecipeComment recipeComment) throws Exception {
    recipeCommentDao.update(recipeComment);
  }
  
}
