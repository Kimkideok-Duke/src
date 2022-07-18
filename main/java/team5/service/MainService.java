package team5.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team5.dao.MainDao;
import team5.vo.Schedule;
   
@Service
public class MainService {
	@Autowired(required=false)
	private MainDao dao;

	public List<Schedule> getScheduleList(int pno){
		return dao.getScheduleList(pno);
	}
		
	public Schedule getScheduleDetail(int itemno){
		return dao.getScheduleDetail(itemno);
	}
	public void deleteSchedule(int itemno) {
		dao.deleteSchedule(itemno);
	}
	public Schedule updateSchedule(Schedule upt) {
		dao.updateSchedule(upt);
		return dao.getScheduleDetail(upt.getItemno());
	}

	public void insertSchedule(Schedule ins) {
		dao.insertSchedule(ins);
	}

	public List<Integer> getUserNoList(int itemno) {
		return dao.getUserNoList(itemno);
	}

	public List<String> getNames(int itemno) {
		return dao.getNames(itemno);
	}

}
