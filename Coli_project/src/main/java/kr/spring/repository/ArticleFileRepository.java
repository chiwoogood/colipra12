package kr.spring.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import kr.spring.entity.Article;
import kr.spring.entity.ArticleFile;

@Repository
public interface ArticleFileRepository extends JpaRepository<ArticleFile, Long>{
	
}
