package team5.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team5.dao.LogDao;
import team5.vo.Log;
import team5.vo.Schedule;

@Service
public class LogService {
	@Autowired(required=false)
	private LogDao dao;
	
	public Log insertLog(Schedule ins){
		return dao.insertLog(ins);    
}
	public List<Log> logList(String item){
		return dao.logList(item);
	}
	
public Log DetailLog(int itemno){	
		return dao.DetailLog(itemno);
	}	
	
}
