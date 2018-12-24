package coms.hrsoft.service;



import java.util.List;

import coms.hrsoft.bean.Role;
import coms.hrsoft.bean.User;

/**
 * 
 * @author Administrator
 *
 */

public interface UserService {

	  User findByUsername(String username);
	 List<User> listAllUser();
	 List<Role> ListAllRole();
	
}
