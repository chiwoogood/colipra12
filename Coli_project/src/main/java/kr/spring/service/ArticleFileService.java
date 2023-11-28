package kr.spring.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.spring.entity.Article;
import kr.spring.entity.ArticleFile;

@Service
public interface ArticleFileService {

   Long upload(Long articleId, HttpServletRequest uploadPath, MultipartFile file);
   
   ArticleFile findByArticle(Article article);
}