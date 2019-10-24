package chop.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import chop.domain.RecipeComment;
import chop.service.RecipeCommentService;

@Controller
@RequestMapping("/recipe/comment")
public class RecipeCommentController {

  @Resource
  private RecipeCommentService recipeCommentService;
  
  @GetMapping("form")
  public void form() {
  }

  @GetMapping("list")
  public void list(Model model) 
      throws Exception {
    List<RecipeComment> recipeComments = recipeCommentService.list();
    model.addAttribute("recipeComments", recipeComments);
  }
  
  @PostMapping("add")
  public String add(RecipeComment recipeComment) throws Exception {
    recipeCommentService.insert(recipeComment);
    return "redirect:list";
  }
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    recipeCommentService.delete(no);
    return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    RecipeComment recipeComment = recipeCommentService.get(no);
    model.addAttribute("recipeComment", recipeComment);
  }
  
   
  @PostMapping("update")
  public String update(RecipeComment recipeComment)  throws Exception {

    recipeCommentService.update(recipeComment);
    System.out.println("번호" + recipeComment.getNo()); 
    System.out.println("번호" + recipeComment.getRecipeNo()); 
    System.out.println("번호" + recipeComment.getMemberNo()); 
    System.out.println("내용" + recipeComment.getRcontent()); 
    return "redirect:list";
  }
  
  
}
