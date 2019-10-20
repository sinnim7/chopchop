package chop.domain;

import java.io.Serializable;
import java.sql.Date;

public class Recipe implements Serializable {
  private static final long serialVersionUID = 1L;
  
  
  private int no;
  private int memberNo;
  private String title;
  private Date createdDate;
  private int viewCount;
  private String content;
  private String thumbnail;
  private String category;
  private String tag;
  private String otherInfo;
  private int scrap;
  
  
  
  
  
  
  @Override
  public String toString() {
    return "Recipe [no=" + no + ", memberNo=" + memberNo + ", title=" + title + ", createdDate="
        + createdDate + ", viewCount=" + viewCount + ", content=" + content + ", thumbnail="
        + thumbnail + ", category=" + category + ", tag=" + tag + ", otherInfo=" + otherInfo
        + ", scrap=" + scrap + "]";
  }
  
  
  public int getNo() {
    return no;
  }
  public void setNo(int no) {
    this.no = no;
  }
  public int getMemberNo() {
    return memberNo;
  }
  public void setMemberNo(int memberNo) {
    this.memberNo = memberNo;
  }
  public String getTitle() {
    return title;
  }
  public void setTitle(String title) {
    this.title = title;
  }
  
  public Date getCreatedDate() {
    return createdDate;
  }
  public void setCreatedDate(Date createdDate) {
    this.createdDate = createdDate;
  }

  public int getViewCount() {
    return viewCount;
  }
  public void setViewCount(int viewCount) {
    this.viewCount = viewCount;
  }
  public String getContent() {
    return content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public String getThumbnail() {
    return thumbnail;
  }
  public void setThumbnail(String thumbnail) {
    this.thumbnail = thumbnail;
  }
  public String getCategory() {
    return category;
  }
  public void setCategory(String category) {
    this.category = category;
  }
  public String getTag() {
    return tag;
  }
  public void setTag(String tag) {
    this.tag = tag;
  }
  public String getOtherInfo() {
    return otherInfo;
  }
  public void setOtherInfo(String otherInfo) {
    this.otherInfo = otherInfo;
  }
  public int getScrap() {
    return scrap;
  }
  public void setScrap(int scrap) {
    this.scrap = scrap;
  }
 
  

  
}
