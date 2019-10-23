package bitcamp.chopchop.dao;

import java.util.List;
import bitcamp.chopchop.domain.Comment;

  public interface CommentDao {
    int insert(Comment comment) throws Exception;
    List<Comment> findAll() throws Exception;
    int update(Comment comment) throws Exception;
    int delete(int no) throws Exception;
    Comment findBy(int no) throws Exception;
}
