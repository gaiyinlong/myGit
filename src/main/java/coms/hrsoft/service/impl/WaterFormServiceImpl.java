package coms.hrsoft.service.impl;


import coms.hrsoft.bean.WaterForm;
import coms.hrsoft.mapper.WaterFormMapper;
import coms.hrsoft.service.WaterFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 */
@Service("waterFormService")

public class WaterFormServiceImpl implements WaterFormService {

 @Autowired
 private WaterFormMapper waterFormMapper;

    @Override
     public List<WaterForm> ListAllwaterFrom() {

        return waterFormMapper.ListAllwaterFrom();
    }
}
