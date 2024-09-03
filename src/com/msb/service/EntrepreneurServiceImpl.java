package com.msb.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.msb.dao.EntrepreneurDAO;
import com.msb.model.Enquiry;

@Service
public class EntrepreneurServiceImpl implements EntrepreneurService {

	@Autowired
	EntrepreneurDAO entrepreneurDao;

	@Override
	public boolean saveEnquiry(Enquiry enquiry) {

		return entrepreneurDao.saveEnquiry(enquiry);
	}
}
