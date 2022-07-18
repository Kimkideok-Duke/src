package team5.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team5.service.NoticeService;
import team5.vo.Notice;

@Controller
public class NoticeController {
	@Autowired(required=false)
	public NoticeService service;
	//http://localhost:7080/Team05/noticeList.do
	@RequestMapping("noticeList.do")
	public String noticeList(
			@RequestParam(value="title", defaultValue="") String title, Model m) {
		m.addAttribute("nolist",service.noticeList(title));
		return "WEB-INF\\views\\notice_list.jsp";
	}
	//http://localhost:7080/Team05/noticeDetail.do?noticeno=23
	@RequestMapping("noticeDetail.do")
	public String noticeDetail(int noticeno, Model m) {
		m.addAttribute("notice", service.noticeDetail(noticeno));
		return "WEB-INF\\views\\notice_detail.jsp";
	}
	
	@RequestMapping("noticeDelete.do")
	public String noticeDelete(@RequestParam("noticeno") int noticeno, Model m) {
		service.noticeDelete(noticeno);
		m.addAttribute("proc", "del");
		return "WEB-INF\\views\\notice_detail.jsp";
	}
	
	//http://localhost:7080/Team05/noticeGoUpdate.do?noticeno=23
	@RequestMapping("noticeGoUpdate.do")
	public String noticeGoUpdate(int noticeno, Model m) {
		m.addAttribute("notice", service.noticeDetail(noticeno));
		return "WEB-INF\\views\\notice_update.jsp";
	}
		
	@RequestMapping("noticeUpdate.do")
	public String noticeUpdate(Notice upt, Model m) {
		m.addAttribute("notice", service.noticeUpdate(upt));
		m.addAttribute("upt", "Y");
		return "WEB-INF\\views\\notice_update.jsp";
	}
	
	@RequestMapping("noticeInsert.do")
	public String noticeInsert(Notice ins, Model m){
		service.noticeInsert(ins);
		m.addAttribute("isInsert","Y");
		return "WEB-INF\\views\\notice_write.jsp";
	}
	@RequestMapping("noticeGoWrite.do")
	public String noticeGoWrite() {
		return "WEB-INF\\views\\notice_write.jsp";
	}


}
