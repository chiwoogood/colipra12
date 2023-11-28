package kr.spring.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
public class MyGallery {
	   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	   private long file_id;
	   
	   @ManyToOne
	   @JoinColumn(name = "atc_idx", referencedColumnName = "atc_id")
	   private Article atc_idx;
	   
	   private String file_path;
	   private long file_size;
	   private String file_ext;
	   
	   @Column(insertable = false, updatable = false, columnDefinition = "datetime default now()")
	   @Temporal(TemporalType.TIMESTAMP)
	   private Date uploaded_at;
	   
	   @ManyToOne
	   @JoinColumn(name="user_id", referencedColumnName="username")
	   private Member user_id;
}
