package kr.spring.entity;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import lombok.Data;

@Data
public class CustomUser extends User{
	// 우리가 만든 회원정보 -> Member를
	// Spring Context Holder에 저장하기 위해서는
	// User 형태로 변환하여서 넣어줘야한다
	// 그걸 해주는 클래스가 바로 CustomUser 클래스
	
	private Member member;
	
//	private CustomFile file;
	
	public CustomUser(Member member) {
		super(member.getUsername(), member.getPassword(), AuthorityUtils.createAuthorityList("ROLE_" + member.getRole().toString()));
		
		this.member = member;
	}
    public String getUsername() {
        return member.getUsername();
    }

    public String getPassword() {
        return member.getPassword();
    }

    public String getName() {
        return member.getName();
    }
    
    public String getPhone() {
    	return member.getPhone();
    }
    
    public String getNickname() {
        return member.getNickname();
    }

    public String getEmail() {
        return member.getEmail();
    }
	
}
