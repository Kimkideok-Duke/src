package team5.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team5.dao.MemberDao;
import team5.vo.Member;
import team5.vo.MemberAccountJoin;

@Service
public class MemberService {
	@Autowired(required=false)
	private MemberDao dao;
	
	// 멤버 리스트
	public List<MemberAccountJoin> getMemberList(int pno){
		return dao.getMemberList(pno);
	}
	
	// 멤버 삭제
	public void deleteMember(Member member) {
		dao.deleteMember(member);
	}
}
