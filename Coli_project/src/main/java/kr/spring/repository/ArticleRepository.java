package kr.spring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kr.spring.entity.Article;

@Repository
public interface ArticleRepository extends JpaRepository<Article, Long>{
	
}
