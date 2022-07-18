package team5.service;

import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team5.dao.AccountDao;
import team5.vo.Account;
import team5.vo.MypageList;



@Service
public class AccountService {
	@Autowired(required=false)
	private AccountDao dao;
	// 계정 등록
	public void insertAccount(Account ins) {
		dao.insertAccount(ins);
	}
	// 아이디 중복체크
	public String checkid(String id) {
		return dao.checkid(id);
	}
	// 로그인 (아이디, 비밀번호 일치하는계정 있는지 확인)
	public int ismember(Account sch) {
		return dao.ismember(sch);
	}
	// 마이페이지 (로그인 아이디로 회원정보 리턴)
	public Account getMypage_id(String id) {
		return dao.getMypage_id(id);
	}
	// 비밀번호 변경
	public void updatePw(Account upt) {
		dao.updatePw(upt);
	}
	// 회원탈퇴
	public void deleteAccount(int userno){
		dao.deleteAccount(userno);
	}
	
	// 마이페이지 내가 생성한 프로젝트 목록
	public List<MypageList> mypagePlist_create(int userno) {
		return dao.mypagePlist_create(userno);
	}
	
	// 마이페이지 내가 참여한 프로젝트 목록
	public List<MypageList> mypagePlist_join(int userno){
		return dao.mypagePlist_join(userno);
	}
	// 인증번호 발송
	public void sendMail(int corNum, String inputEmail) {
        Properties p = System.getProperties();
        p.put("mail.smtp.starttls.enable", "true");     // gmail은 true 고정
        p.put("mail.smtp.host", "smtp.naver.com");      // smtp 서버 주소
        p.put("mail.smtp.auth","true");                 // gmail은 true 고정
        p.put("mail.smtp.port", "587");                 // 네이버 포트
           
        Authenticator auth = new MyAuthentication();
        //session 생성 및  MimeMessage생성
        Session session = Session.getDefaultInstance(p, auth);
        MimeMessage msg = new MimeMessage(session);
         
        try{
            //편지보낸시간
            msg.setSentDate(new Date());
            InternetAddress from = new InternetAddress() ;
            from = new InternetAddress("projectls220425@naver.com"); //발신자 아이디
            // 이메일 발신자
            msg.setFrom(from);
            // 이메일 수신자
            InternetAddress to = new InternetAddress(inputEmail);
            msg.setRecipient(Message.RecipientType.TO, to);
            // 이메일 제목
            msg.setSubject("프로젝트 매니저 회원가입 인증번호", "UTF-8");
            // 이메일 내용
            msg.setText("회원가입을 환영합니다\n인증번호는 "+corNum+" 입니다.", "UTF-8");
            // 이메일 헤더
            msg.setHeader("content-Type", "text/html");
            //메일보내기
            javax.mail.Transport.send(msg, msg.getAllRecipients());
             
        }catch (AddressException addr_e) {
            addr_e.printStackTrace();
        }catch (MessagingException msg_e) {
            msg_e.printStackTrace();
        }catch (Exception msg_e) {
            msg_e.printStackTrace();
        }
    }
}
class MyAuthentication extends Authenticator {
    
    PasswordAuthentication pa;
    public MyAuthentication(){
         
        String id = "projectls220425@naver.com";
        String pw = "rydbrtpsxj220425";
 
        
        pa = new PasswordAuthentication(id, pw);
    }
 
    // 시스템에서 사용하는 인증정보
    public PasswordAuthentication getPasswordAuthentication() {
        return pa;
    }
} 
