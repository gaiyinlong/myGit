package coms.hrsoft.controller;

import coms.hrsoft.bean.Medium;
import coms.hrsoft.service.MediumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;

/**
 *
 */
@Controller
@RequestMapping(value="/medium")
public class MediumController {

    @Autowired
    @Qualifier("mediumService")
    private MediumService mediumService;


    @RequestMapping(value="listMediumNames", method = RequestMethod.GET)
    @ResponseBody
    public ArrayList<Medium> listAllMediumName(ModelMap model) {

        System.out.println("获取介质列表");

        ArrayList<Medium> mediumList = mediumService.listAllMediumName();


        for (int i = 0; i < mediumList.size(); i++) {

            System.out.println(mediumList.get(i));


        }
        model.addAttribute("mediumList", mediumList);


        return mediumList;
    }
}

