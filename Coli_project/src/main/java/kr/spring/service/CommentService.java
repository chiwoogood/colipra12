package kr.spring.service;

import java.util.List;
import kr.spring.entity.Comment;

public interface CommentService {
   
   public void saveComment(long atc_id, String comment_content, String username);
   
   List<Comment> getCommentsByArticleId(long atc_id);;
   
   public void delete(Long cmt_id);
   
}
