package kr.spring.entity;


import java.time.LocalDateTime;


import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.Id;
import javax.persistence.PrePersist;


import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
public class Member {
	
	@Id
	private String username; // Spring Security에서는 id가 아닌 username으로 지정
	
	private String password; // Spring Security에서는 pw가 아닌 password로 지정
	private String name; 
	
	@Enumerated(EnumType.STRING)
	private Role role; // 권한정보
	
	private String nickname; // 이름
	
	private String email;
	private String phone;
	
	
	private LocalDateTime created_at;
	
	private String passwordConfirmation; // 비밀번호 확인용 필드
	
	@PrePersist
	protected void onCreate() {
	    created_at = LocalDateTime.now();
	}
    
    public Member() {
    	this.role = Role.FREE;
    }
	
}
