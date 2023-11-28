package kr.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import kr.spring.entity.Member;

public interface MemberRepository extends JpaRepository<Member, String>{
	
	@Modifying
	@Query("UPDATE Member m SET m.email = :email, m.phone = :phone, m.nickname = :nickname where m.username = :username")
	public void modify(@Param("email")String email, @Param("phone")String phone, @Param("nickname")String nickname ,@Param("username")String username);

	
	
}
