package chop.service;

import java.util.List;
import chop.domain.Recipe;

public interface RecipeService {
  List<Recipe> list() throws Exception;
  Recipe get(int no) throws Exception;
  void insert(Recipe recipe) throws Exception;
  void update(Recipe recipe) throws Exception;
  void delete(int no) throws Exception;
}










