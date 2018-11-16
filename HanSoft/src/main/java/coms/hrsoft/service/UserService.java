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

	public  User findByUsername(String username);
	public List<User> listAllUser();
	public List<Role>ListAllRole();
	
}
