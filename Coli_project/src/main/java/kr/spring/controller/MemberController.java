package kr.spring.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.spring.exception.PasswordNotMatchException;

import kr.spring.entity.Member;

import kr.spring.service.MemberService;

@Controller
@RequestMapping("member/*")
public class MemberController {
   
   @Autowired
   private MemberService memberService;
   
   @GetMapping("/login")
   public String login() {
      return "member/login";
   }
   
   @PostMapping("/join")
   public String join(Member vo, Model model) {
       try {
           boolean joinResult = memberService.join(vo);
           if (joinResult) {
               return "redirect:login";
           }
       } catch (PasswordNotMatchException e) {
           // PasswordNotMatchException이 발생한 경우
           model.addAttribute("error", "비밀번호와 비밀번호 확인이 일치하지 않습니다.");
           return "member/login";
       } catch (Exception e) {
           // 기타 예외 처리
           model.addAttribute("error", "회원가입 중 오류가 발생했습니다.");
           return "member/login";
       }

       // 비밀번호가 일치하지 않거나 다른 예외가 발생한 경우 회원가입 페이지로 이동
       return "member/login";
   }
   
   @PostMapping("/login")
    public String login(Member vo, Model model) {
        if (memberService.login(vo)) {
            // 로그인 성공
            // 로그인 성공 후 수행할 작업 추가
            return "index"; // 예시로 home 페이지로 리다이렉트
        } else {
            // 로그인 실패
            // 로그인 실패 후 수행할 작업 추가
            model.addAttribute("loginFail", true); // 실패 메시지를 모델에 추가
            return "member/login";
        }
    }
      
   @GetMapping("/mypage")
   public String mypage() {
      return "member/mypage";
   }
   
   @GetMapping("/modify")
   public String modify() {
	   return "member/modify";
   }
   
   @PostMapping("/modify")
   public String modify(Member vo) {
	   memberService.modify(vo);
       return "member/mypage";
   }
   
   @GetMapping("/myplan")
   public String myplan() {
	   return "member/myplan";
   }
	   
	@GetMapping("/mygallery")
	public String mygallery() {
		return "member/mygallery";
	}
	

   
}