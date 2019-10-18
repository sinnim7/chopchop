package chop.web;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import chop.domain.Member;
import chop.service.MemberService;

@Controller
@RequestMapping("/member")
public class MemberController {

  @Resource
  private MemberService memberService;
  
  @GetMapping("form")
  public void form() {
  }

  @GetMapping("list")
  public void list(Model model) 
      throws Exception {
    List<Member> members = memberService.list();
    model.addAttribute("members", members);
  }
  
  @PostMapping("add")
  public String add(Member member) throws Exception {
    memberService.insert(member);
    return "redirect:list";
  }
  
  @GetMapping("delete")
  public String delete(int no) throws Exception {
    memberService.delete(no);
    return "redirect:list";
  }
  
  @GetMapping("detail")
  public void detail(Model model, int no) throws Exception {
    Member member = memberService.get(no);
    model.addAttribute("member", member);
  }
  
  
  @PostMapping("update")
  public String update(Member member) 
      throws Exception {
    memberService.update(member);
    return "redirect:list";
  }
  
  
}
