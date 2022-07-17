package team5.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import team5.vo.Account;
import team5.vo.MypageList;


// team5.dao.AccountDao

@Repository
public interface AccountDao {
	// 계정 등록
	public void insertAccount(Account ins);
	
	// 아이디 중복체크
	public String checkid(String id);
	
	// 로그인 (아이디, 비밀번호 일치 체크)
	public int ismember(Account sch);
	
	// 아이디로 회원 상세정보 가져오기 (마이페이지)
	public Account getMypage_id(String id);
	
	// 비밀번호 변경
	public void updatePw(Account upt);
	
	// 회원탈퇴
	public void deleteAccount(int userno);
	
	// 마이페이지 내가 생성한 프로젝트 목록
	public List<MypageList> mypagePlist_create(int userno);
	
	// 마이페이지 내가 참여한 프로젝트 목록
	public List<MypageList> mypagePlist_join(int userno);
}
