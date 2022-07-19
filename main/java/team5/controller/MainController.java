package team5.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import team5.service.LogService;
import team5.service.MainService;
import team5.vo.Log;
import team5.vo.Schedule;

@Controller
public class MainController {
	@Autowired(required=false)
	private MainService service;
	
	@Autowired(required=false)
	private LogService service01;
	
	// http://localhost:7080/Team5/Main.do
	// http://220.73.54.156:8080/Team5/Main.do
	@RequestMapping("Main.do")
	public String Main(@RequestParam(value = "pno", defaultValue = "2") int pno, Model d){
		d.addAttribute("slist", service.getScheduleList(pno));
		return "WEB-INF\\views\\Main.jsp";
	}

	@RequestMapping("Insert.do")
	public String Insert(){
		return "WEB-INF\\views\\insertSchedule2.jsp";
	}
	@RequestMapping("ScheduleDetail.do")
	public String ScheduleDetail(@RequestParam("itemno") int itemno, Model d){
		d.addAttribute("schedule", service.getScheduleDetail(itemno));
	//	d.addAttribute("usernolist",service.getUserNoList(itemno));
		return "WEB-INF\\views\\ScheduleDetail.jsp";
	}
	
	@RequestMapping("insertSchedule.do")
	public String insertSchedule(@RequestParam("userno") int itemno,Schedule ins, Model d){
		service.insertSchedule(ins);
		d.addAttribute("inLog", service01.insertLog(ins));
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

	// http://localhost:7080/Team5/getNames.do
	@RequestMapping("getNames.do")
	public String getNames(@RequestParam(value = "itemno", defaultValue = "3") int itemno, Model d){
		d.addAttribute("nameslist", service.getNames(itemno));
		return "WEB-INF\\views\\Member.jsp";
	}
	
	
	// http://localhost:7080/Team5/Log.do
	
	@RequestMapping("DetailLog.do")
	public String DetailLog(@RequestParam("itemno") int itemno, Model d){
		d.addAttribute("log",service01.DetailLog(itemno));		
		return "WEB-INF\\views\\Log.jsp";
	}	
	
	@RequestMapping("Log.do")
	public String Log(@RequestParam("item") String item,
			               @RequestParam("progress") String progress,
			               @RequestParam("deadline") String deadline,
			               @RequestParam("comm") String comm, Model d) {
		d.addAttribute("log",service01.logList(item));
        d.addAttribute("item",item);
		d.addAttribute("progress", progress);
		d.addAttribute("deadline", deadline);
		d.addAttribute("comm", comm);	
		return "WEB-INF\\views\\Log.jsp";
	}


}