package team5.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import team5.vo.Project;
import team5.vo.ProjectMemberJoin;

@Repository
public interface ProjectDao {
	
	// 참여 프로젝트 목록 추출
	public List<ProjectMemberJoin> getProjectList(int userno);

}
