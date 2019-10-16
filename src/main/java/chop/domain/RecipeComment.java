package chop.domain;

import java.io.Serializable;
import java.sql.Date;

public class RecipeComment implements Serializable {
  private static final long serialVersionUID = 1L;
  
  private int no;
  private int recipeNo;
  private int memberNo;
  private Date createdDate;
  private String content;
  
  
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
  public static long getSerialversionuid() {
    return serialVersionUID;
  }
  
 

  
}
