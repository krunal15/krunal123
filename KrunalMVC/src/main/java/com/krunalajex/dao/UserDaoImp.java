package com.krunalajex.dao;

import java.util.List;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.krunalajex.model.User;
@Repository
public class UserDaoImp implements UserDao{

	

    @Autowired
    private SessionFactory sessionFactory;
 
    
    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }
	
	
	public List<User> listAll() {
	
		        return ((UserDao) getCurrentSession().createQuery("from User")).listAll();	
		
	}

	public void saveUser(User user) {
		
		
		 getCurrentSession().save(user);
		
	}
	
	

	


	
	
	

	
}
