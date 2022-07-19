package team5.dao;

import org.springframework.stereotype.Repository;

import team5.vo.Alert;


@Repository
public interface AlertDao {
	public Alert progressAlert(Alert alt);
}
