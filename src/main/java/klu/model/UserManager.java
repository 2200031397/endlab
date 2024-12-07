package klu.model;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import klu.repository.UserRepository;

@Service
public class UserManager 
{
  @Autowired
  UserRepository UR;
  
  public String signUp(User user)
  {
    try 
    {
      if(UR.validateUsername(user.getUsername())>0)
    	  throw new Exception("username already exist");
      UR.save(user);
      return " Registration Successful ";
      
    } 
    catch (Exception e) 
    {
      return e.getMessage();
    }
    
    
    
  }
  
  public String login(User user) {
	  ArrayList<User> listUser=new ArrayList(UR.findAll());
	  for(User u:listUser) {
		  if (u.getUsername().equals(user.getUsername())) { 
		        if (u.getPassword().equals(user.getPassword())) {  
		            return "200";
		        }
		    }
	  }
	  return "401";
  }
  
}