package coms.hrsoft.controller;

import java.util.List;

import javax.servlet.http.HttpSession;


import coms.hrsoft.bean.Areas;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import coms.hrsoft.bean.User;
import coms.hrsoft.service.UserService;


/**
 * 
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/user")
public class UserController {


	@Autowired
	@Qualifier("userService")
	private UserService userService;

	//返回到login
	@RequestMapping(value="/login")
	public String login(){

		return "login";
	}
	@RequestMapping(value = "/selectUser")
	public ModelAndView addSelect() {

		System.out.println("公司列表！");
		ModelAndView mv = new ModelAndView();

		//获取到公司列表
		mv.setViewName("addSelect");
		return mv;
	}

	/**
	 * 这是总厂页面
	 *
	 * @return
	 */
	@RequestMapping(value = "/mainWorkShop")
	public String mainWorkShop() {


		return "mainWorkShop";
	}


	@RequestMapping(value = "/addUser")
	public String addUser() {

		return "addUser";
	}

	@RequestMapping(value="/index1")
	public String index1(){

		return "index1";
	}

	/**
	 * 能源报表
	 * @return
	 */
	@RequestMapping(value="/reportMeasure")
	public String reportMeasure(){


		return "reportMeasure";
	}
	@RequestMapping(value = "/listUser")
	public ModelAndView listUser() {

		System.out.println("进入列表");

		List<User> userList = userService.listAllUser();

		ModelAndView mv = new ModelAndView();
		mv.addObject("userList", userList);

		return mv;
	}

	/**
	 * @param model
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/loginto", method = RequestMethod.POST)
	public ModelAndView login(User model, HttpSession session) {
		//System.out.println("进入登录");

		System.out.println(model.getUserName());
		//List<Role> roleList=userService.ListAllRole();
		User user = userService.findByUsername(model.getUserName());


		if (user == null || !user.getUserPass().equals(model.getUserPass())) {
			session.setAttribute("erro", "该用户不存在！");

			return new ModelAndView("login");

		} else {

			session.setAttribute("user", user);


			

		/*	ModelAndView mv = new ModelAndView();
			mv.setViewName("index1");*/

			//mv.addObject("roleList",roleList);
			return new ModelAndView("redirect:index1");

		}
	}
}