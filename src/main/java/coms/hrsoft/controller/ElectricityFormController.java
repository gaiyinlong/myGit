package coms.hrsoft.controller;

import coms.hrsoft.bean.ElectricityForm;
import coms.hrsoft.service.ElectricityFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 *
 */
@Controller
@RequestMapping(value="/elecForm")
public class ElectricityFormController {

    @Autowired
    @Qualifier("electricityFormService")
    private ElectricityFormService electricityFormService;

    /**
     *
     * @param modelMap
     * @return
     */
 @RequestMapping(value="/listElecForms",method = RequestMethod.GET)
 @ResponseBody
    public List<ElectricityForm> ListAllElecForms(ModelMap modelMap){



     List<ElectricityForm> electricityFormList =electricityFormService.ListAllElecForm();

     for(int i =0;i<electricityFormList.size();i++){


         System.out.println(electricityFormList.get(i));
     }

     modelMap.addAttribute("electricityFormList",electricityFormList);

        return  electricityFormList;
    }

}
