package kr.spring.service;




import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.spring.entity.Member;
import kr.spring.exception.PasswordNotMatchException;
import kr.spring.repository.MemberRepository;

@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberRepository memberRepository;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Override
    public boolean join(Member vo) throws PasswordNotMatchException {
        if (isPasswordMatch(vo.getPassword(), vo.getPasswordConfirmation())) {
            String encPw = vo.getPassword();
            vo.setPassword(passwordEncoder.encode(encPw));
            memberRepository.save(vo);
            return true;  // 가입 성공
        } else {
            throw new PasswordNotMatchException("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
        }
    }

    @Override
    public boolean login(Member vo) {
        Member existingMember = memberRepository.findById(vo.getUsername()).orElse(null);

        return existingMember != null && passwordEncoder.matches(vo.getPassword(), existingMember.getPassword());
    }
    
    @Override
    public void modify(Member vo) {
        // 기존 회원 정보를 데이터베이스에서 가져옴
    	System.out.println(vo);
        Optional<Member> member = memberRepository.findById(vo.getUsername());
//      
        Member existingMember = member.get();
        if (existingMember != null) {
            // 변경할 속성들만 업데이트
            existingMember.setNickname(vo.getNickname());
            existingMember.setPhone(vo.getPhone());
            existingMember.setEmail(vo.getEmail());
            System.out.println(existingMember);
            // 수정된 회원 정보 저장
            memberRepository.save(existingMember);
//    		memberRepository.modify(vo.getEmail(),vo.getPhone(),vo.getNickname(),vo.getUsername());
        }
    }



    @Override
    public boolean isPasswordMatch(String password, String passwordConfirmation) {
        return password.equals(passwordConfirmation);
    }
    
    
    


}