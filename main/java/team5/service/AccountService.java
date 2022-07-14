package team5.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team5.dao.AccountDao;
import team5.vo.Account;



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
	
}
