package kr.spring.entity;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;

import lombok.Data;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;

@Entity
@Data
public class Article {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long atc_id;
	
	@Column(length = 30)
	private String atc_title;
	
	private String atc_content;
	
	private LocalDateTime created_at;
	
	@PrePersist
	protected void onCreate() {
	    created_at = LocalDateTime.now();
	}
	
	@ManyToOne
	@JoinColumn(name = "writer_id", referencedColumnName = "username")
	private Member writer_id;
	
	private int atc_likes = 0;
	private int atc_views = 0;
	
	
    @OneToMany(mappedBy = "article", cascade = CascadeType.ALL)
    private List<ArticleFile> articleFiles = new ArrayList<>();
}
