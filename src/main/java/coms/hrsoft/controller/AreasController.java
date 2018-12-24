package coms.hrsoft.controller;

import coms.hrsoft.bean.Areas;
import coms.hrsoft.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;



/**
 *
 */
@Controller
@RequestMapping(value="/areas")
public class AreasController {

    @Autowired
    @Qualifier("areaService")
    private AreaService areaService;



    /**
     * 能源报表
     * @return
     */
    @RequestMapping(value="/reportMeasure")
    public String reportMeasure(){


        return "reportMeasure";
    }

    /**
     * 显示工作区域列表
     * @param
     * @return
     */
    @RequestMapping(value="listAreasName",method = RequestMethod.GET)
    @ResponseBody
    public List<Areas> listAreasName(ModelMap model){

        System.out.println("获取工作区域列表");

        List<Areas> areaList= areaService.ListAllAreas();

        for (int i =0; i<areaList.size();i++){


            System.out.println("车间名字"+areaList.get(i));

        }

        model.addAttribute("areaList",areaList);


        return areaList;
    }

/**
 * 显示介质列表
 */




}
