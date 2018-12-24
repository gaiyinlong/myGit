package coms.hrsoft.bean;

import java.io.Serializable;

/**
 * 
 * @author Administrator
 *
 */
public class Role implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer roleId;
	private String roleName;
	private Integer rolestatue;
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	public Integer getRolestatue() {
		return rolestatue;
	}
	public void setRolestatue(Integer rolestatue) {
		this.rolestatue = rolestatue;
	}
	
	
}
