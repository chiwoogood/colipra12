package kr.spring.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import lombok.Data;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Data
public class ArticleFile {
   
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private long file_id;
   
   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name = "atc_id")
   private Article article;
   
   private String file_path;
   private long file_size;
   private String file_ext;
   
   @Column(insertable = false, updatable = false, columnDefinition = "datetime default now()")
   @Temporal(TemporalType.TIMESTAMP)
   private Date uploaded_at;
   
   public void addArticle(Article article) {
	   this.article = article;
	   article.getArticleFiles().add(this);
   }
}
