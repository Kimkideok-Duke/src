package team5.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team5.dao.AlertDao;
import team5.vo.Alert;

@Service
public class AlertService {
	@Autowired(required=false)
	private AlertDao dao;
	public Alert getAlert(Alert alt) {
		return dao.getAlert(alt);
	}
}
