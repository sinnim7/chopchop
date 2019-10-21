package chop.service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import chop.dao.RecipeCommentDao;
import chop.dao.RecipeDao;
import chop.domain.Recipe;
import chop.service.RecipeService;

// RecipeService 기본 구현체 
//
@Service
public class DefaultRecipeService implements RecipeService {

  @Resource
  private RecipeDao recipeDao;
  @Resource
  private RecipeCommentDao recipeCommentDao; 

  
  @Override
  public void insert(Recipe recipe) throws Exception {
    recipeDao.insert(recipe);
  }
  
  @Override
  public void delete(int no) throws Exception {
    if (recipeDao.delete(no) == 0) {
      throw new Exception("해당 데이터가 없습니다.");
    }
  }

  @Override
  public Recipe get(int no) throws Exception {
    Recipe recipe = recipeDao.findBy(no);
    if (recipe == null) {
      throw new Exception("해당 번호의 데이터가 없습니다!");
    } 
    recipeDao.increaseViewCount(no);
    return recipe;
  }

  @Override
  public List<Recipe> list() throws Exception {
    return recipeDao.findAll();
  }

  
  @Override
  public void update(Recipe recipe) throws Exception {
    recipeDao.update(recipe);
  }
  
}
