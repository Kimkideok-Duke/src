package team5.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team5.dao.ProjectDao;
import team5.vo.Member;
import team5.vo.Project;
import team5.vo.ProjectMemberJoin;

@Service
public class ProjectService {
	@Autowired(required=false)
	private ProjectDao dao;
	
	public List<ProjectMemberJoin> getProjectList(int userno){
		return dao.getProjectList(userno);
	}
	
	public Integer joinProject(String code) {
		return dao.joinProject(code);
	}
	
	public void createProject(Project ins) {
		dao.createProject(ins);
	}
	
	public void insertMemberHost(Member ins) {
		dao.insertMemberHost(ins);
	}
	
	public void insertMember(Member ins) {
		dao.insertMember(ins);
	}
}
