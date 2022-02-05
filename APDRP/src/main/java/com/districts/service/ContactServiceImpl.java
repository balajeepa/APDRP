package com.districts.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.districts.dto.ContactDao;
import com.districts.model.Contact;

@Service
public class ContactServiceImpl implements ContactService {
	
	private ContactDao contactDao;
	
	public void saveContact(Contact contact) {
		contactDao.saveContact(contact);
	}
}
