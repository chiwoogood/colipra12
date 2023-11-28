package kr.spring.service;



import kr.spring.entity.Member;
import kr.spring.exception.PasswordNotMatchException;

public interface MemberService {
    boolean join(Member vo) throws PasswordNotMatchException;
    
    boolean login(Member vo);
    
    public void modify(Member vo);
    
    boolean isPasswordMatch(String password, String passwordConfirmation);
    
}
