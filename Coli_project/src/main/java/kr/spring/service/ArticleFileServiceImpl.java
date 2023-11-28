package kr.spring.service;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import kr.spring.entity.Article;
import kr.spring.entity.ArticleFile;
import kr.spring.repository.ArticleFileRepository;

@Service
@Transactional
public class ArticleFileServiceImpl implements ArticleFileService {

    @Autowired
    private ArticleFileRepository articlefileRepository;
    @Autowired
    private ArticleService articleService;

    @Override
    public Long upload(Long articleId, HttpServletRequest request, MultipartFile file) {
        Article article = articleService.findById(Long.valueOf(articleId));

        if (article == null) {
            article = new Article();
            article = articleService.register(article);
        }
        ArticleFile articleFile = new ArticleFile();
        articleFile.addArticle(article);
        articleFile.setFile_size(file.getSize());
        articleFile.setFile_ext(getFileExtension(file.getOriginalFilename()));

        try {
            // 파일 저장 경로 설정
        	String filePath = FileUtilsService.uploadToLocalFile(request, file);
            articleFile.setFile_path(FileUtilsService.toDBuploadPath(filePath));
            // 데이터베이스에 파일 정보 저장
            articlefileRepository.save(articleFile);
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException("Failed to store file", e);
        }

        return article.getAtc_id();
    }

    private String getFileExtension(String originalFilename) {
        int dotIndex = originalFilename.lastIndexOf('.');
        return (dotIndex == -1) ? "" : originalFilename.substring(dotIndex + 1).toLowerCase();
    }

    private String getFileNameFromPath(String filePath) {
        FileUtilsService fileUtilsService = new FileUtilsService();
        return fileUtilsService.getFileNameFromPath(filePath);
    }
    
    @Override
    public ArticleFile findByArticle(Article article) {
//    	articlefileRepository.find(article.getAtc_id());
    	return null;
    }
}
