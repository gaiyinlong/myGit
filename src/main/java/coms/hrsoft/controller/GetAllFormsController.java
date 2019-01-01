package coms.hrsoft.controller;


import coms.hrsoft.service.GetAllFormsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;


/**
 * 获取所有实体表的列表信息（由于水电气三种表是分开建的数据表）
 */
@Controller
@RequestMapping(value = "/AllForms")
public class GetAllFormsController {

@Autowired
@Qualifier("getAllFormsService")
    private GetAllFormsService getAllFormsService;


    @RequestMapping("/getAll")
    @ResponseBody
    public List GetAllForms(ModelMap modelMap){

   System.out.println("获取所有表！");
     List getAllForms=getAllFormsService.GetAllForms();


      modelMap.addAttribute("getAllForms",getAllForms);



     return getAllForms;



    }

    /**
     *
     * @param areas(区域)
     * @param medium（介质）
     * @param timer（时间跨度）
     * @return
     */
    @RequestMapping(value="/searchFrom")
    @ResponseBody
    public List<Object> searchFrom(ModelMap modelMap,String areaName,  String mediumName, String start,String end){


     System.out.println("进入条件查询");



     List<Object> search=getAllFormsService.searchForms(areaName,mediumName,start,end);



     if(search!=null){


         modelMap.addAttribute("search",search);


     }

     return search;

    }
}
