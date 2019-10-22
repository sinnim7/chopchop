package chop.domain;

import java.io.Serializable;
import java.sql.Date;

public class RecipeComment implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int no;
  private int recipeNo;
  private int memberNo;
  private Date commentCreatedDate;
  private String commentContent;
  private Member member;
  
  
  public Date getCommentCreatedDate() {
    return commentCreatedDate;
  }
  public void setCommentCreatedDate(Date commentCreatedDate) {
    this.commentCreatedDate = commentCreatedDate;
  }
  
  
  
  public String getCommentContent() {
    return commentContent;
  }
  public void setCommentContent(String commentContent) {
    this.commentContent = commentContent;
  }
  
  public Member getMember() {
    return member;
  }
  public void setMember(Member member) {
    this.member = member;
  }
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
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
