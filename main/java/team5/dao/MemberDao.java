package team5.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import team5.vo.Member;
import team5.vo.MemberAccountJoin;
import team5.vo.Project;
import team5.vo.ProjectMemberJoin;

@Repository
public interface MemberDao {
	
	// 멤버 리스트
	public List<MemberAccountJoin> getMemberList(int pno);
	
	// 멤버 삭제
	public void deleteMember(Member member);
	
	// 권한 조회
	public String getAuth(Member member);
}
