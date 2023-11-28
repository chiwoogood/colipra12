package kr.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.entity.Article;
import kr.spring.entity.Comment;
import kr.spring.entity.Member;
import kr.spring.repository.ArticleRepository;
import kr.spring.repository.CommentRepository;
import kr.spring.repository.MemberRepository;

@Service
public class CommentServiceImpl implements CommentService {
   @Autowired
   private ArticleRepository articleRepository;
   
    @Autowired
    private CommentRepository commentRepository;

    @Autowired
    private MemberRepository memberRepository;

    @Override
    public void saveComment(long atc_id, String comment_content, String username) {
        // 사용자 엔티티 조회
        Member member = memberRepository.findById(username).orElse(null);

        if (member == null) {
            // 사용자가 존재하지 않는 경우 예외 처리
            throw new RuntimeException("사용자를 찾을 수 없습니다.");
        }
        
        Article article = articleRepository.findById(atc_id).orElse(null);
        Comment comment = new Comment();
        comment.setAtc_idx(article);
        comment.setCmt_content(comment_content);
        comment.setCmt_writer_id(member);
        
        // 댓글 저장
        commentRepository.save(comment);

    }
    
    @Override
    public List<Comment> getCommentsByArticleId(long atc_id) {
        return commentRepository.findByArticleId(atc_id);
    }
    
    @Override
    public void delete(Long cmt_id) {
    	commentRepository.deleteById(cmt_id);
    }
    
}