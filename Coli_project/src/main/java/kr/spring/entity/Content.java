package kr.spring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import java.util.Date;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
public class Content {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long ctn_id;
	
	private String ctn_type; // Spring Sequrity에서는 pw가 아닌 password로 지정
	
	@ManyToOne
    @JoinColumn(name = "writer_id", referencedColumnName = "username") // writer_id를 Member 테이블의 username과 연결
	private Member writer_id;
	
	private String ctn_original;
	private String ctn_path;
	
	@Column(insertable = false, updatable = false, columnDefinition = "datetime default now()")
	@Temporal(TemporalType.TIMESTAMP)
	private Date uploaded_at;
}
