package chop.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import chop.domain.Recipe;
import chop.service.RecipeService;

@Controller
@RequestMapping("/recipe")
public class RecipeController {

  @Resource
  private RecipeService recipeService;
  
  @GetMapping("form")
  public void form() {
  }

  @GetMapping("list")
  public void list(Model model) 
      throws Exception {
    List<Recipe> recipes = recipeService.list();
    model.addAttribute("recipes", recipes);
  }
  
  @PostMapping("add")
  public String add(Recipe recipe) throws Exception {
    recipeService.insert(recipe);
    return "redirect:list";
  }
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    recipeService.delete(no);
    return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    Recipe recipe = recipeService.get(no);
    model.addAttribute("recipe", recipe);
  }
  
  
  @PostMapping("update")
  public String update(Recipe recipe) 
      throws Exception {
    recipeService.update(recipe);
    return "redirect:list";
  }
  
  
}