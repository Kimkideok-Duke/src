package team5.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team5.service.MainService;
import team5.vo.Schedule;

@Controller
public class MainController {
	@Autowired(required=false)
	private MainService service;
	
	// http://localhost:7080/team5/Main.do
	// http://220.73.54.156:8080/team5/Main.do
	
	@RequestMapping("Main.do")
	public String Main(@RequestParam(value = "pno", defaultValue = "1") int pno, Model d){
		d.addAttribute("slist", service.getScheduleList(pno));
		return "WEB-INF\\views\\Main.jsp";
	}
	@RequestMapping("Insert.do")
	public String Insert(){
		return "WEB-INF\\views\\insertSchedule.jsp";
	}
	@RequestMapping("ScheduleDetail.do")
	public String ScheduleDetail(@RequestParam("itemno") int itemno, Model d){
		d.addAttribute("schedule", service.getScheduleDetail(itemno));
	//	d.addAttribute("usernolist",service.getUserNoList(itemno));
		return "WEB-INF\\views\\ScheduleDetail.jsp";
	}
	@RequestMapping("insertSchedule.do")
	public String insertSchedule(Schedule ins, Model d){
		service.insertSchedule(ins);
		d.addAttribute("isInsert","Y");
		return "WEB-INF\\views\\insertSchedule.jsp";
	}
	
	@RequestMapping("updateSchedule.do")
	public String updateSchedule(Schedule upt, Model d){
		d.addAttribute("schedule",service.updateSchedule(upt));
		d.addAttribute("proc","upt");
		return "WEB-INF\\views\\ScheduleDetail.jsp";
	}
	
	@RequestMapping("deleteSchedule.do")
	public String deleteSchedule(@RequestParam("itemno") int itemno, Model d){
		service.deleteSchedule(itemno);
		d.addAttribute("proc","del");
		return "WEB-INF\\views\\ScheduleDetail.jsp";
	}

	
}