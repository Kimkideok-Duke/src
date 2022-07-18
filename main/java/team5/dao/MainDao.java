package team5.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import team5.vo.Schedule;

@Repository
public interface MainDao {
	
	public List<Schedule> getScheduleList(int pno);
	
	public Schedule getScheduleDetail(int itemno);
	
	public void deleteSchedule(int itemno);
	
	public void updateSchedule(Schedule upt);

	public void insertSchedule(Schedule ins);

	public List<Integer> getUserNoList(int itemno);

	public List<String> getNames(int itemno);


}