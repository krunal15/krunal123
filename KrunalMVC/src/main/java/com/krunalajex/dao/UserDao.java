package com.krunalajex.dao;

import java.util.List;

import javax.transaction.Transactional;


import org.springframework.stereotype.Service;

import com.krunalajex.model.User;


@Service
@Transactional
public interface UserDao {

	
	public  List<User> listAll();

	public void saveUser(User user);

}
