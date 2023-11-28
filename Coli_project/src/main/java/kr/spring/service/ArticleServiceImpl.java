 package kr.spring.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.spring.entity.Article;
import kr.spring.repository.ArticleRepository;


@Service
public class ArticleServiceImpl implements ArticleService{

   @Autowired
   private ArticleRepository articleRepository;
   
   @Override
   public List<Article> getList() {
      List<Article> list = articleRepository.findAll();
      return list;
   }
   
   @Override
   public Article register(Article vo) {
      // 게시글 등록
      articleRepository.save(vo);
      return vo; // 저장된 게시글의 ID 반환
   }
   
   @Override
   public Article get(Long atc_id) {
      Optional<Article> vo = articleRepository.findById(atc_id);
      return vo.get();
   }

   @Override
   public void delete(Long atc_id) {
      articleRepository.deleteById(atc_id);
   }

   @Override
   public void modify(Article article) {
       articleRepository.save(article);
   }
   
   @Override
   public Article findById(long atc_id) {
       return articleRepository.findById(atc_id).orElse(null);
   }
   
   @Override
   public Article Detail(long atc_id) {
       // 게시글 정보를 데이터베이스에서 가져오는 로직
       return articleRepository.findById(atc_id).orElse(null);
   }

}

