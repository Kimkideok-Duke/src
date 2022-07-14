package team5.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import team5.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired(required=false)
	public NoticeService service;

}
