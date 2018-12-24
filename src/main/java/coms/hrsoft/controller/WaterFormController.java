package coms.hrsoft.controller;

import coms.hrsoft.bean.WaterForm;
import coms.hrsoft.service.WaterFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 水表controller
 */
@Controller
@RequestMapping(value = "/waterForm")
public class WaterFormController {

    @Autowired
    @Qualifier("waterFormService")
    private WaterFormService waterFormService;


    @RequestMapping(value = "/listWaterForm", method = RequestMethod.GET)
    @ResponseBody
    public List<WaterForm> ListAllWaterForm(ModelMap modelMap) {


        System.out.println("水表列表");
        List<WaterForm> waterFormList = waterFormService.ListAllwaterFrom();



        modelMap.addAttribute("waterFormList", waterFormList);


        return waterFormList;
    }
}
