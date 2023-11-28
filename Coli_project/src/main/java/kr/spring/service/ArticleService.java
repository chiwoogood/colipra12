package kr.spring.service;

import java.util.List;

import kr.spring.entity.Article;

public interface ArticleService {
   
   public List<Article> getList(); // 게시글 전체조회
   
   public Article register(Article vo); // 게시글 등록

   public Article get(Long atc_id);

   public void delete(Long atc_id);

   void modify(Article article);
   
   Article findById(long atc_id);
   
   public Article Detail(long atc_id);

}