package team5.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team5.dao.NoticeDao;
import team5.vo.Notice;

@Service
public class NoticeService {
	@Autowired(required=false)
	private NoticeDao dao;
	
	// 공지사항 리스트/검색
	public List<Notice> noticeList(Notice sch){
		return dao.noticeList(sch);
	}
	// 공지사항 등록
	public void noticeInsert(Notice ins) {
		dao.noticeInsert(ins);
	}
	// 공지사항 상세
	public Notice noticeDetail(int noticeno) {
		return dao.noticeDetail(noticeno);
	}
	// 공지사항 조회수
	public void readCountup(int noticeno) {
		dao.readCountup(noticeno);
	}
	// 공지사항 수정
	public void noticeUpdate(Notice upt) {
		dao.noticeUpdate(upt);
	}
	// 공지사항 삭제
	public void noticeDelete(int noticeno) {
		dao.noticeDelete(noticeno);
	}


}
