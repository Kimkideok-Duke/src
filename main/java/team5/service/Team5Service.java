package team5.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import team5.dao.Team5Dao;

@Service
public class Team5Service {
	@Autowired(required=false)
	private Team5Dao dao;
}
