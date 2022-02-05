package com.districts.dto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.jdbc.core.JdbcTemplate;
import javax.sql.DataSource;
import com.districts.mapper.LoginRowMapper;
import com.districts.model.LoginBean;


@Repository
@Transactional
public class LoginDaoImpl implements LoginDao{
	
	JdbcTemplate jdbcTemplate;

	@Autowired
	public LoginDaoImpl(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	@Autowired
	private NamedParameterJdbcTemplate template;
	
	@SuppressWarnings("deprecation")
	@Override
	public int userverification(LoginBean loginBean) {
		
		final String SQL_INSERT_CONTACT_NAMED_PARAMETER = "select count(userid) from users where (userid=? and password=?)";
		//SqlParameterSource sqlParameterSource = new BeanPropertySqlParameterSource(loginBean);
		//int count=template.qu(SQL_INSERT_CONTACT_NAMED_PARAMETER, sqlParameterSource,new LoginRowMapper(),Integer.class);
		
		int count1=jdbcTemplate.queryForObject(SQL_INSERT_CONTACT_NAMED_PARAMETER, new Object[]{loginBean.getUsername(),loginBean.getPassword()} ,Integer.class);
		
		return count1;
	}

}
