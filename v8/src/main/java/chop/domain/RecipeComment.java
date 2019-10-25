package chop.domain;

import java.io.Serializable;
import java.sql.Date;

public class RecipeComment implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int commentNo;
  private int recipeNo;
  private int memberNo;
  private Date createdDate;
  private String rcontent;
  
  
  
  
  @Override
  public String toString() {
    return "RecipeComment [commentNo=" + commentNo + ", recipeNo=" + recipeNo + ", memberNo="
        + memberNo + ", createdDate=" + createdDate + ", rcontent=" + rcontent + "]";
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
  public String getRcontent() {
    return rcontent;
  }
  public void setRcontent(String rcontent) {
    this.rcontent = rcontent;
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
