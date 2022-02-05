package com.districts.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.districts.dto.LoginDao;
import com.districts.model.LoginBean;

@Service
public class LoginServiceImpl implements LoginService{
	
	@Autowired
	private LoginDao loginDao;

	@Override
	public int userverification(LoginBean loginBean) {
		// TODO Auto-generated method stub
		return loginDao.userverification(loginBean);
	}

}
