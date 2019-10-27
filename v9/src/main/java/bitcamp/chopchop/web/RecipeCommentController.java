package bitcamp.chopchop.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.chopchop.domain.Member;
import bitcamp.chopchop.domain.RecipeComment;
import bitcamp.chopchop.service.MemberService;
import bitcamp.chopchop.service.RecipeCommentService;

@Controller
@RequestMapping("/recipecomment")
public class RecipeCommentController {

  @Resource
  private RecipeCommentService recipeCommentService;
  
  @Resource
  private MemberService memberService;
  
  
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
    System.out.println(recipeComment.getCommentNo());
    return "redirect:../rrecipe/detail?no=" + recipeComment.getRecipeNo();
  }
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    RecipeComment recipeComment = recipeCommentService.get(no); 
    recipeCommentService.delete(no);
    return "redirect:../rrecipe/detail?no=" + recipeComment.getRecipeNo();
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    RecipeComment recipeComment = recipeCommentService.get(no);
    model.addAttribute("recipeComment", recipeComment);
    System.out.println(recipeComment.toString());
    System.out.println("=====================");
    List<Member> members = recipeComment.getMembers();
    System.out.println("=====================");
    System.out.println(recipeComment.getMembers());
    System.out.println("=====================");
    for (Member rc : members) {
      System.out.println("=====================");
    System.out.println(rc.getNickname());}
    System.out.println("rrr");
    //Member member = memberService.get(no);
    //model.addAttribute("member", member);
    
  }
  
   
  @PostMapping("update")
  public String update(RecipeComment recipeComment)  throws Exception {

    recipeCommentService.update(recipeComment);
    return "redirect:../rrecipe/detail?no=" + recipeComment.getRecipeNo();
  }
  
  
}
