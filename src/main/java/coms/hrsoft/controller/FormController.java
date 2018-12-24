package coms.hrsoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 动态页面跳转器
 * @author Administrator
 *
 */
@Controller
public class FormController {
	@RequestMapping(value="/{formName}")
	public String loginForm( @PathVariable String formName){
		//动态跳转页面
		return formName;

		
		
	}


    //返回到login
    @RequestMapping(value="/login")
    public String login(){

        return "login";
    }

    @RequestMapping(value="/userList")
	public String userList(){
		
		return "listUser";
		
	}




	//跳转到dataGrid页面
	@RequestMapping(value="/dataGrid")
	public String dataGrid(){
		
		
		return "dataGrid";


	}
@RequestMapping(value="/welcomes")
public String welcomes(){
	
	return "welcomes";
}
@RequestMapping(value="/index")
public String index(){
	
	return "index";
}


	@RequestMapping(value="/mainWorkShop")
	public  String mainWorkShop(){


             return "mainWorkShop";
	}


}
