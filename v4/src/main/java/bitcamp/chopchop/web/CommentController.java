package bitcamp.chopchop.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import bitcamp.chopchop.domain.Comment;
import bitcamp.chopchop.service.CommentService;

@Controller
@RequestMapping("/recipe/comment")
public class CommentController {
  @Resource
  private CommentService commentService;
  
  @GetMapping("form")
  public void form() {
  }

  @GetMapping("list")
  public void list(Model model) 
      throws Exception {
    List<Comment> comments = commentService.list();
    model.addAttribute("comments", comments);
  }
  
  @PostMapping("add")
  public String add(Comment comment) throws Exception {
    commentService.insert(comment);
    return "redirect:list";
  }
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    commentService.delete(no);
    return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    Comment comment = commentService.get(no);
    model.addAttribute("comment", comment);
  }
  
   
  @PostMapping("update")
  public String update(Comment comment) 
      throws Exception {
    commentService.update(comment);
    return "redirect:list";
  }
  
}
