package kr.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import kr.spring.entity.Pose;

@Repository
public interface PoseRepository extends JpaRepository<Pose, Long>{

}
