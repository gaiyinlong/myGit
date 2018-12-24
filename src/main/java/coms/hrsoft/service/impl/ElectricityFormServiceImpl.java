package coms.hrsoft.service.impl;

import coms.hrsoft.bean.ElectricityForm;
import coms.hrsoft.mapper.ElectricityFormMapper;
import coms.hrsoft.service.ElectricityFormService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 */
@Service("electricityFormService")
public class ElectricityFormServiceImpl implements ElectricityFormService {

    @Autowired
    private ElectricityFormMapper electricityFormMapper;

    @Override
    public List<ElectricityForm> ListAllElecForm() {



        return electricityFormMapper.ListAllElecForm();
    }

}
