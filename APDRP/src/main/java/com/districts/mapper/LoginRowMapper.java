package com.districts.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.districts.model.LoginBean;

public class LoginRowMapper implements RowMapper<LoginBean> {
	public LoginBean mapRow(ResultSet rs, int row) throws SQLException {
		LoginBean contact = new LoginBean();
		contact.setUsername(rs.getString("username"));
		contact.setPassword(rs.getString("password"));
		return contact;
	}
}
