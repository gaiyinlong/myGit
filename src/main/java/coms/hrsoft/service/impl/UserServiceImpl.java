package coms.hrsoft.service.impl;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import coms.hrsoft.bean.Role;
import coms.hrsoft.bean.User;
import coms.hrsoft.mapper.UserMapper;
import coms.hrsoft.service.UserService;

/**
 * 
 * @author Administrator
 *
 */
@Service("userService")
public class UserServiceImpl implements UserService {
	
   @Autowired
	private UserMapper userMapper;


	@Override
	public User findByUsername(String username) {
		
		return userMapper.findByUsername(username);
	}

	@Override
	public List<User> listAllUser() {
	
		return userMapper.listAllUser();
	}

	@Override
	public List<Role> ListAllRole() {
		// TODO Auto-generated method stub
		return userMapper.ListAllRole();
	}

	

}
