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
import chop.domain.RecipeComment;
import chop.service.RecipeCommentService;
import chop.service.RecipeService;

@Controller
@RequestMapping("/recipe")
public class RecipeController {

  
  
  @Resource  private RecipeService recipeService;
  @Resource private RecipeCommentService recipeCommentService;
  
  String uploadDir;
  
  public RecipeController(ServletContext sc) {
    System.out.println("RecipeController1");
    uploadDir = sc.getRealPath("/upload/recipe");
  }
  
  @GetMapping("form")
  public void form() {
  }
  
  @PostMapping("add")
  public String add(Recipe recipe, MultipartFile file) throws Exception {
    
    recipe.setThumbnail(writeFile(file));
    recipeService.insert(recipe);
    System.out.println("RecipeController2");
    return "redirect:list";
  }
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    recipeService.delete(no);
    System.out.println("RecipeController3");
    return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    Recipe recipe = recipeService.get(no);
    model.addAttribute("recipe", recipe);
    System.out.println("---------------------------------내용출력------");
    System.out.println(recipe.toString());
    System.out.println("---------------------------------내용출력------");
    //System.out.println("---------------------------------내용출력------");
    List<RecipeComment> comments = recipe.getComments();
    System.out.println("---------------------------------내용출력------");
    for (RecipeComment rc : comments) 
    { System.out.println(rc.getContent()); }
    System.out.println("---------------------------------내용출력------");
    /*
     * 
     * RecipeComment recipeComment = recipeCommentService.get(no);
     * System.out.println("---------------------------------------");
     * System.out.println(recipeComment.toString());
     */
    
    //model.addAttribute("recipeComments", comments);
    System.out.println("RecipeController4");
  }
  
  @GetMapping("list")
  public void list(Model model)  throws Exception {
    List<Recipe> recipes = recipeService.list();
    model.addAttribute("recipes", recipes);
    System.out.println("RecipeController5");
  }
  
  @PostMapping("update")
  public String update(Recipe recipe, MultipartFile file) throws Exception {
    recipe.setThumbnail(writeFile(file));
    recipeService.update(recipe);
    System.out.println("RecipeController6");
    return "redirect:list";
    
  }
  
  private String writeFile(MultipartFile file) throws Exception {
    if (file.isEmpty())
      return null;
    System.out.println("RecipeController7");
    
    String filename = UUID.randomUUID().toString();
    file.transferTo(new File(uploadDir + "/" + filename));
    return filename;
  }
  
}
