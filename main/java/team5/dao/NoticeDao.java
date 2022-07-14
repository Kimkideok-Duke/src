package team5.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import team5.vo.Notice;


@Repository
public interface NoticeDao {
	// 공지사항 리스트/검색
	public List<Notice> noticeList(Notice sch);
	// 공지사항 등록
	public void noticeInsert(Notice ins);
	// 공지사항 상세
	public Notice noticeDetail(int noticeno);
	// 공지사항 조회수
	public void readCountup(int noticeno);
	// 공지사항 수정
	public void noticeUpdate(Notice upt);
	// 공지사항 삭제
	public void noticeDelete(int noticeno);

}
