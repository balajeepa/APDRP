package com.districts.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import com.districts.model.Contact;

public class ContactRowMapper implements RowMapper<Contact> {
	public Contact mapRow(ResultSet rs, int row) throws SQLException {
		Contact contact = new Contact();
		contact.setContactId(rs.getInt("contact_id"));
		contact.setContactName(rs.getString("contact_name"));
		contact.setContactAddress(rs.getString("contact_address"));
		contact.setContactPhone(rs.getString("contact_phone"));
		return contact;
	}
}
