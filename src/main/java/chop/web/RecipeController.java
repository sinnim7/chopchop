package chop.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import chop.domain.Recipe;
import chop.service.RecipeService;

@Controller
@RequestMapping("/recipe")
public class RecipeController {

  @Resource
  private RecipeService recipeService;

  @GetMapping("list")
  public void list(Model model) 
      throws Exception {
    List<Recipe> recipes = recipeService.list();
    model.addAttribute("recipes", recipes);
  }
  
}
