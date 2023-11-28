package kr.spring.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
public class Pose {
	
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long pose_id;

    private String pose_name;

    @Lob // 큰 객체(BLOB)를 저장하기 위한 어노테이션
    private byte[] pose_coordinate; // 파일 데이터를 저장할 바이트 배열 필드
}
