package team5.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team5.service.ProjectService;

@Controller
public class ProjectController {
	@Autowired(required=false)
	private ProjectService service;
	
	// http://localhost:8080/Team5/getProjectList.do
	@RequestMapping("getProjectList.do")
	public String getProjectList(
			@RequestParam(value="userno", defaultValue="10001") int userno, Model d) {
		d.addAttribute("plist", service.getProjectList(userno));
		return "WEB-INF/views/chooseProject.jsp";
	}
}
