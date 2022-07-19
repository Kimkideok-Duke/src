package team5.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import team5.vo.Log;
import team5.vo.Schedule;

@Repository
public interface LogDao {
	
	public void insertLog(Schedule upt);

	public List<Log> logList(String item);
	
	public Log DetailLog(int itemno);

}
