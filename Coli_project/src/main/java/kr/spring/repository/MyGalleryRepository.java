package kr.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kr.spring.entity.MyGallery;


@Repository
public interface MyGalleryRepository extends JpaRepository<MyGallery, Long>{

}
