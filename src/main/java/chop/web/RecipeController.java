package chop.web;

import java.io.File;
import java.util.List;
import java.util.UUID;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import chop.domain.Recipe;
import chop.service.RecipeService;

@Controller
@RequestMapping("/recipe")
public class RecipeController {

  @Resource  private RecipeService recipeService;
  
  String uploadDir;
  
  public RecipeController(ServletContext sc) {
    uploadDir = sc.getRealPath("/upload/recipe");
  }
  
  @GetMapping("form")
  public void form() {
  }
  
  @PostMapping("add")
  public String add(Recipe recipe, MultipartFile file) throws Exception {
    recipe.setThumbnail(writeFile(file));
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
  
  @GetMapping("list")
  public void list(Model model)  throws Exception {
    List<Recipe> recipes = recipeService.list();
    model.addAttribute("recipes", recipes);
  }
  
  @PostMapping("update")
  public String update(Recipe recipe, MultipartFile file) throws Exception {
    recipe.setThumbnail(writeFile(file));
    recipeService.update(recipe);
    return "redirect:list";
  }
  
  private String writeFile(MultipartFile file) throws Exception {
    if (file.isEmpty())
      return null;
    
    String filename = UUID.randomUUID().toString();
    file.transferTo(new File(uploadDir + "/" + filename));
    return filename;
  }
  
}
