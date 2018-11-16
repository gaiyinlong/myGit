package coms.hrsoft.bean;

import java.io.Serializable;

/**
 * 
 * @author Administrator
 *
 */
public class Company implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer companyId;
	private String companyName;
	private Integer companyStatue;
	public Integer getCompanyId() {
		return companyId;
	}
	public void setCompanyId(Integer companyId) {
		this.companyId = companyId;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public Integer getCompanyStatue() {
		return companyStatue;
	}
	public void setCompanyStatue(Integer companyStatue) {
		this.companyStatue = companyStatue;
	}
	
}
