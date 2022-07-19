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
	
	public void insertLog(Schedule upt){
		 dao.insertLog(upt);    
}
	public List<Log> logList(String item){
		return dao.logList(item);
	}
	
public Log DetailLog(int itemno){	
		return dao.DetailLog(itemno);
	}
public List<Log> selectLd(int itemno) {
	return dao.selectLd(itemno);
}
public void ck_update(Schedule ins){
	 dao.ck_update(ins);    
}
public void ck_data01(int itemno) {
  dao.ck_data01(itemno); 
}
	
}
