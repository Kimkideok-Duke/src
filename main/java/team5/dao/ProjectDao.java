package team5.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import team5.vo.Member;
import team5.vo.Project;
import team5.vo.ProjectMemberJoin;

@Repository
public interface ProjectDao {
	
	// 참여 프로젝트 목록 추출
	public List<ProjectMemberJoin> getProjectList(int userno);
	
	// 새 프로젝트 참가
	public Integer joinProject(String code);

	// 프로젝트 생성
	public void createProject(Project ins);
	
	// 프로젝트 호스트 추가
	public void insertMemberHost(Member ins);
	
	// 프로젝트 멤버 추가 (member)
	public void insertMember(Member ins);
}
