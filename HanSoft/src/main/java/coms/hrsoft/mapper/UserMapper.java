package coms.hrsoft.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import coms.hrsoft.bean.Role;
import coms.hrsoft.bean.User;

/**
 * 
 * @author Administrator
 *
 */
public interface UserMapper {
	
	
	  User findByUsername(@Param("username")String username);
      List<User>listAllUser();
      List<Role>ListAllRole();
}
