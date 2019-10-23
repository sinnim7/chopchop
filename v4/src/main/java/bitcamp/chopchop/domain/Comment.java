package bitcamp.chopchop.domain;

public class Comment {

private static final long serialVersionUID = 1L;
  
  private int no;
  private int recipeNo;
  private int memberNo;
  private String createdDate;
  private String content;
  private  String writerName;
  
  
  
  public String getWriterName() {
    return writerName;
  }

  public void setWriterName(String writerName) {
    this.writerName = writerName;
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
  
  public String getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(String createdDate) {
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
