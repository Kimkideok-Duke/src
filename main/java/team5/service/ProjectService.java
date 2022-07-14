package team5.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team5.dao.ProjectDao;
import team5.vo.Project;
import team5.vo.ProjectMemberJoin;

@Service
public class ProjectService {
	@Autowired(required=false)
	private ProjectDao dao;
	
	public List<ProjectMemberJoin> getProjectList(int userno){
		return dao.getProjectList(userno);
	}
}
