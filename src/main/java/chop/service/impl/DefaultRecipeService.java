package chop.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import chop.dao.RecipeDao;
import chop.domain.Recipe;
import chop.service.RecipeService;

// BoardService 기본 구현체 
//
@Service
public class DefaultRecipeService implements RecipeService {

  @Resource
  private RecipeDao recipeDao;

  /*
  @Override
  public void insert(Recipe board) throws Exception {
    recipeDao.insert(recipe);
  }

  @Override
  public void delete(int no) throws Exception {
    if (boardDao.delete(no) == 0) {
      throw new Exception("해당 데이터가 없습니다.");
    }
  }

  @Override
  public Board get(int no) throws Exception {
    Board board = boardDao.findBy(no);
    if (board == null) {
      throw new Exception("해당 번호의 데이터가 없습니다!");
    } 
    boardDao.increaseViewCount(no);
    return board;
  }
*/
  @Override
  public List<Recipe> list() throws Exception {
    return recipeDao.findAll();
  }

  /*
  @Override
  public void update(Board board) throws Exception {
    boardDao.update(board);
  }
  */
}
