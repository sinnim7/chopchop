package bitcamp.chopchop.domain;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class RecipeComment implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int commentNo;
  private int recipeNo;
  private int memberNo;
  private Date createdDate;
  private String content;
  private List<Member> members;
  
  
  
 
  
  public List<Member> getMembers() {
    return members;
  }
  public void setMembers(List<Member> members) {
    this.members = members;
  }
  public int getCommentNo() {
    return commentNo;
  }
  public void setCommentNo(int commentNo) {
    this.commentNo = commentNo;
  }
  public Date getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }
  
  
  

  public String getContent() {
    return content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public int getRecipeNo() {
    return recipeNo;
  }
  public void setRecipeNo(int recipeNo) {
    this.recipeNo = recipeNo;
    
  }
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  
 
  public static long getSerialversionuid() {
    return serialVersionUID;
  }
  
 

  
}
