package team5.controller;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team5.service.ProjectService;
import team5.vo.Member;
import team5.vo.Project;

@Controller
public class ProjectController {
	@Autowired(required=false)
	private ProjectService service;
	
	// http://localhost:8080/Team5/chooseProject.do
	@RequestMapping("chooseProject.do")
	public String getProjectList(HttpSession session, Model d) {
		int userno = (int)session.getAttribute("userNo");
		d.addAttribute("plist", service.getProjectList(userno));
		return "WEB-INF/views/chooseProject.jsp";
	}
	
	// http://localhost:8080/Team5/joinProjectPage.do
	@RequestMapping("joinProjectPage.do")
	public String joinProjectPage() {
		return "WEB-INF/views/joinProject.jsp";
	}
	
	// http://localhost:8080/Team5/Project1.do
	@RequestMapping("Project1.do")
	public String Project1() {
		return "WEB-INF/views/Project1.jsp";
	}
	
	// http://localhost:8080/Team5/joinProject.do
	@RequestMapping("joinProject.do")
	public String joinProject(HttpSession session, String code, Model d) {
		int pno = service.joinProject(code);
		d.addAttribute("pno", pno); 
		session.setAttribute("pno", pno);
		d.addAttribute("isJoin","Y");
		service.insertMember(new Member((int)session.getAttribute("userNo"),(int)session.getAttribute("pno"),"MANAGER"));
		return "WEB-INF/views/joinProject.jsp";
	}
	
	// http://localhost:8080/Team5/createProjectPage.do
	@RequestMapping("createProjectPage.do")
	public String createProjectPage(Model d) {
		Random random = new Random();	//랜덤 함수 선언
		int createNum = 0;  			//1자리 난수
		String ranNum = ""; 			//1자리 난수 형변환 변수
        int letter    = 8;				//난수 자릿수:8
		String resultNum = "";  		//결과 난수
		for (int i=0; i<letter; i++) {
			createNum = random.nextInt(9);
			ranNum =  Integer.toString(createNum);
			resultNum += ranNum;
		}
		System.out.println(resultNum);
		d.addAttribute("code", resultNum);
		return "WEB-INF/views/createProject.jsp";
	}
	// http://localhost:8080/Team5/createProject.do
	@RequestMapping("createProject.do")
	public String createProject(HttpSession session, Project ins, Model d) {
		service.createProject(ins);
		int pno = service.joinProject(ins.getCode());
		d.addAttribute("pno", pno);
		session.setAttribute("pno", pno);
		d.addAttribute("isCreate","Y");
		service.insertMemberHost(new Member((int)session.getAttribute("userNo"),(int)session.getAttribute("pno"),"HOST"));
		return "WEB-INF/views/createProject.jsp";
	}
}
