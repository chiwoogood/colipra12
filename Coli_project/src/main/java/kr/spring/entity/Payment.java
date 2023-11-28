package kr.spring.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;

import lombok.Data;
import lombok.ToString;

@Entity
@Data
@ToString
public class Payment {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long orderId; // 주문번호 
   
	@OneToOne
    @JoinColumn(name = "user_id", referencedColumnName = "username")
	private Member user_id; // 구매자 ID
   
    private String RoleName; // 구매상품명(FREE, STANDARD, PRO)
   
    private BigDecimal paymentAmount; // 결제금액
   
    private String paymentMethod; // 결제수단
   
    private LocalDateTime paymentDate; // 결제일
   
   @PrePersist
    protected void onCreate() {
        paymentDate = LocalDateTime.now();
    }   
}