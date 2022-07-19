package team5.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import team5.service.AlertService;
import team5.vo.Alert;

@Controller
public class AlertController {
	@Autowired(required=false)
	public AlertService service;
	//http://localhost:7080/Team05/getAlert.do
	@RequestMapping("getAlert.do")
	public String getAlert(Alert alt, Model m) {
		alt = new Alert(10001, 2, "완료");
		m.addAttribute("alert", service.getAlert(alt));
		return "WEB-INF\\views\\alert_push.jsp";
	}
}
