package team5.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team5.service.AccountService;
import team5.vo.Account;



@Controller
public class AccountController {
	@Autowired(required=false)
	private AccountService service;
	
	
	// 로그인 페이지 열기
	// http://localhost:7080/Team5/login.do
	// 공용서버에서 열기
	// http://220.73.54.156:8080/Team5/login.do
	@RequestMapping("login.do")
	public String goLogin() {
		return "WEB-INF\\views\\login.jsp";
	}
	
	// 로그인화면에서 회원가입 누르면 이동 (약관동의 페이지)
	// http://localhost:7080/Team5/join1.do
	@RequestMapping("join1.do")
	public String goJoin() {
		return "WEB-INF\\views\\join_agree.jsp";
	}
	
	// 약관동의 페이지 (약관내용 페이지 iframe용)
	// http://localhost:7080/Team5/agreeInfo.do
	@RequestMapping("agreeInfo.do")
	public String agreeInfo() {
		return "WEB-INF\\views\\service_agree.jsp";
	}
	
	// 약관동의하고 버튼 누르면 신규회원가입 페이지
	// http://localhost:7080/Team5/join2Ajax.do
	@RequestMapping("join2Ajax.do")
	public String goJoin2Ajax() {
		return "WEB-INF\\views\\join2.jsp";
	}
	// 아이디 중복체크 ajax
	// http://localhost:7080/Team5/checkidAjax.do
	@RequestMapping("checkidAjax.do")
	public String checkIdAjax(@RequestParam(value = "id", defaultValue = "") String id, Model d) {
		String checkid = service.checkid(id);
		if(checkid.equals("0")) {
			d.addAttribute("idcheckresult", "Y");
			d.addAttribute("idvalue", id);
		}else {
			d.addAttribute("idcheckresult", "N");
			d.addAttribute("idvalue", id);
		}
		return "pageJsonReport";
	}
	// 가입하기 버튼 (신규 계정 등록처리)
	// http://localhost:7080/Team5/joinAccount.do
	@RequestMapping("joinAccount.do")
	public String joinAccount(Account ins, Model d) {
		service.insertAccount(ins);
		d.addAttribute("joinresult", "Y");
		return "WEB-INF\\views\\join2.jsp";
	}
	
	// 로그인 (아이디, 비밀번호 일치하는 회원 있는지 확인)
	@RequestMapping("isMember.do")
	public String isMember(HttpSession session, Account sch, Model d) {
		int dist = service.ismember(sch);
		if(dist==1) {
			String id = sch.getId();
			int userno = service.getMypage_id(id).getUserno();
			session.setAttribute("userId", id);
			session.setAttribute("userNo", userno);
			d.addAttribute("dist", "Y");
			d.addAttribute("loginId", sch.getId());
		}else {
			d.addAttribute("dist", "N");
		}
		return "WEB-INF\\views\\login.jsp";
	}
	// 비밀번호 변경
	@RequestMapping("pwChange.do")
	public String pwChange(HttpSession session, @RequestParam(value = "pw", defaultValue = "") String pw, Model d) {
		String id = (String)session.getAttribute("userId");
		service.updatePw(new Account(id, pw));
		d.addAttribute("proc3", "Y");
		return "WEB-INF\\views\\change_pw.jsp";
	}
	//마이페이지 호출
	// http://localhost:7080/Team5/mypage2.do
	@RequestMapping("mypage2.do")
	public String mypage2() {
		return "WEB-INF\\views\\mypage2.jsp";
	}
	//마이페이지 ajax
	// http://localhost:7080/Team5/mypageAjax.do
	@RequestMapping("mypageAjax.do")
	public String mypageAjax(HttpSession session, Model d) {
		String id = (String)session.getAttribute("userId");
		d.addAttribute("user", service.getMypage_id(id));
		return "pageJsonReport";
	}
	//비밀번호 변경페이지 호출 ajax
	// http://localhost:7080/Team5/goChangePwAjax.do
	@RequestMapping("goChangePwAjax")
	public String goChangePwAjax(HttpSession session, @RequestParam("pw") String inputPw, Model d) {
		String id = (String)session.getAttribute("userId");
		Account ac = service.getMypage_id(id);
		if(ac.getPw().equals(inputPw)) {
			d.addAttribute("valid", true);
		}else {
			d.addAttribute("valid", false);
		}
		return "pageJsonReport";
	}
	// 비밀번호 변경페이지 이동
	// http://localhost:7080/Team5/goChangePwPage.do
	@RequestMapping("goChangePwPage.do")
	public String goChangePwPage() {
		return "WEB-INF\\views\\change_pw.jsp";
	}
	// 로그아웃
	@RequestMapping("logout.do")
	public String logout(HttpSession session, Model d) {
		session.invalidate();
		d.addAttribute("logout", "Y");
		return "mypage2.do";
	}
	// 회원탈퇴
	@RequestMapping("withdraw.do")
	public String withdraw(HttpSession session, @RequestParam("userno") String userno, Model d) {
		int usernoInt = Integer.parseInt(userno);
		service.deleteAccount(usernoInt);
		session.invalidate();
		d.addAttribute("proc4", "W");
		return "mypage2.do";
	}
	// 마이페이지 내가 생성한 프로젝트
	// http://localhost:7080/Team5/createPjList.do
	@RequestMapping("createPjList.do")
	public String createPjList(HttpSession session, Model d) {
		int userno = (int)session.getAttribute("userNo");
		d.addAttribute("createList", service.mypagePlist_create(userno));
		return "pageJsonReport";
	}
	// 마이페이지 내가 참여한 프로젝트
	// http://localhost:7080/Team5/joinPjList.do
	@RequestMapping("joinPjList.do")
	public String joinPjList(HttpSession session, Model d) {
		int userno = (int)session.getAttribute("userNo");
		d.addAttribute("joinList", service.mypagePlist_join(userno));
		return "pageJsonReport";
	}
	// 인증번호 발송
	// http://localhost:7080/Team5/sendCorNum.do
	@RequestMapping("sendCorNum.do")
	public String sendCorNum(@RequestParam("inputEmail") String inputEmail, Model d) {
		int corNum = (int)(Math.random()*900000+100000);
		service.sendMail(corNum, inputEmail);
		d.addAttribute("corNum", corNum);
		return "pageJsonReport";
	}
}
