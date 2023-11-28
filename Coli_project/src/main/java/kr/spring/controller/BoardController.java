package kr.spring.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


import kr.spring.entity.Article;
import kr.spring.entity.ArticleFile;
import kr.spring.entity.Comment;
import kr.spring.service.ArticleFileService;
import kr.spring.service.ArticleFileServiceImpl;
import kr.spring.service.ArticleService;
import kr.spring.service.CommentService;
import kr.spring.service.FileUtilsService;

import java.io.File;
import java.time.LocalDateTime;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import org.springframework.util.FileCopyUtils;

import org.springframework.web.multipart.MultipartFile;


import kr.spring.entity.Member;


import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;



@Controller
@RequestMapping("board/*")
public class BoardController {
   
   @Autowired
   private ArticleService articleService;
   
   @Autowired
   private ArticleFileService articleFileService;
   
   @Autowired 
   private CommentService commentService;
   
   
   @PostMapping("/upload")
   @ResponseBody
   public ResponseEntity<String> uploadFiles(
         HttpServletRequest request,
         @RequestParam("files") List<MultipartFile> files,
           @RequestParam("articleId") Long articleId) {
       try {
           // 글 ID를 이용하여 ArticleFile 객체에 연결
           for (MultipartFile file : files) {
              articleId = articleFileService.upload(articleId, request, file);
           }
           return new ResponseEntity<>("success", HttpStatus.OK).ok().body(String.valueOf(articleId));
       } catch (Exception e) {
           e.printStackTrace();
           return new ResponseEntity<>("error", HttpStatus.INTERNAL_SERVER_ERROR);
       }
   }
   
   @GetMapping("/boardform")
   public String boardform(Model model) {
      return "board/boardform";
   }
   
   @PostMapping("/register")
   @ResponseBody
   public ResponseEntity<Long> register(@ModelAttribute Article vo) {
      // 현재 로그인한 사용자의 아이디 가져오기
   
       String writerId = getCurrentUserId();

       // vo에 writerId 설정
       Member member = new Member();
       member.setUsername(writerId);
       
       vo.setCreated_at(LocalDateTime.now());
       vo.setWriter_id(member);
       Article articleId;
       // 글 등록
       articleId = articleService.register(vo);
       System.out.println(articleId.getCreated_at());
       // 글 ID를 반환
       return new ResponseEntity<>(articleId.getAtc_id(), HttpStatus.OK);
   }
   
   private String getCurrentUserId() {
       Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
       if (authentication.getPrincipal() instanceof UserDetails) {
           UserDetails userDetails = (UserDetails) authentication.getPrincipal();
           return userDetails.getUsername(); // 사용자 아이디 반환
       }
       return null;
   }

   
   @PostMapping("/remove")
   public String remove(@RequestParam("atc_id")long atc_id) {
      articleService.delete(atc_id);
      return "redirect:/board/gallery";
   }
   
   @GetMapping("/modify")
   public String modify(HttpServletRequest request,
		   @RequestParam("atc_id") long atc_id, Model model) throws Exception{
       // GET 요청으로 변경된 내용을 처리하는 코드를 작성
       Article article = articleService.Detail(atc_id);
       List<ArticleFile> articleFiles = article.getArticleFiles();
       for (int i =0; i<articleFiles.size(); i++) {
    	   String filepath = FileUtilsService.takeFilePath(request, articleFiles.get(i).getFile_path());
    	   articleFiles.get(i).setFile_path(filepath);
       }
       article.setArticleFiles(articleFiles);
       model.addAttribute("article", article);
       return "board/modifyform";
   }

   
   
   @PostMapping("/modify")
   public String modify(@RequestParam("atc_id")long atc_id, Article vo) {
       Article existingArticle = articleService.findById(atc_id);
       articleService.modify(existingArticle);
       return "redirect:/board/detail/" + atc_id;

   }
   
   @PostMapping("/articleFileUpload")
   public String articleFileUpload(ArticleFile articleFile) {
//      articleFileService.save(articleFile);
      return "";
   }
   
   @GetMapping("/gallery")
   public String gallery(HttpServletRequest request, Model model) {
       // 게시물 목록을 가져오는 로직
       List<Article> articles = articleService.getList();
       
       for (int i =0; i<articles.size(); i++) {
    	   Article article = articles.get(i);
    	   List<ArticleFile> articleFiles = article.getArticleFiles();
           for (int j =0; j<articleFiles.size(); j++) {
        	   String filepath = FileUtilsService.takeFilePath(request, articleFiles.get(i).getFile_path());
        	   articleFiles.get(i).setFile_path(filepath);
           }
           article.setArticleFiles(articleFiles);
       }
       model.addAttribute("articles", articles);

       return "board/gallery";
   }

   
   @GetMapping("/detail/{atc_id}")
   public String detail(@PathVariable long atc_id, Model model) {
       // GET 요청으로 변경된 내용을 처리하는 코드를 작성
       Article article = articleService.Detail(atc_id);
       model.addAttribute("article", article); 
       
       List<Comment> comments = commentService.getCommentsByArticleId(atc_id);
       model.addAttribute("comments", comments);
       
       
       return "board/detail";
   }
   
   @PostMapping("/commentRegister")
   public String commentRegister(@RequestParam("atc_id") long atc_id, @RequestParam("comment_content") String comment_content) {
       Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
       String username = authentication.getName(); // 현재 로그인한 사용자의 아이디 가져오기   
       commentService.saveComment(atc_id, comment_content, username);

       // 현재 페이지로 리다이렉트
       return "board/detail/" + atc_id;
   }
   
   @PostMapping("commentRemove")
   public void commentRemove(@RequestParam("cmt_id")long cmt_id) {
	   commentService.delete(cmt_id);
	   
   }
   
}