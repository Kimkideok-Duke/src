package team5.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team5.service.MemberService;
import team5.vo.Member;
import team5.vo.MemberAccountJoin;

@Controller
public class MemberController {
	@Autowired(required=false)
	MemberService service;
	
	// 멤버 조회
	// http://localhost:8080/Team5/getMemberList.do
	@RequestMapping("getMemberList.do")
	public String getMemberList(@RequestParam(value="pno", defaultValue="2") int pno, Model d){
		d.addAttribute("mlist", service.getMemberList(pno));
		return "WEB-INF/views/memberList.jsp";
	}
	
	// 멤버 삭제
	@RequestMapping("deleteMember.do")
	public String deleteMember(Member member, Model d) {
		service.deleteMember(member);
		d.addAttribute("del", "Y");
		return "WEB-INF/views/memberList.jsp";
	}
}
