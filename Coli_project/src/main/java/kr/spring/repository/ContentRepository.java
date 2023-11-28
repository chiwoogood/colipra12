package kr.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kr.spring.entity.Content;


@Repository
public interface ContentRepository extends JpaRepository<Content, Long>{

}
