package bitcamp.chopchop.service;

import java.util.List;
import bitcamp.chopchop.domain.Comment;

public interface CommentService {
  List<Comment> list() throws Exception;
  Comment get(int no) throws Exception;
  void insert(Comment comment) throws Exception;
  void update(Comment comment) throws Exception;
  void delete(int no) throws Exception;
}
