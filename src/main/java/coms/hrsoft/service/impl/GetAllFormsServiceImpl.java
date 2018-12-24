package coms.hrsoft.service.impl;

import coms.hrsoft.mapper.GetAllFormsMapper;
import coms.hrsoft.service.GetAllFormsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

/**
 *
 */
@Service("getAllFormsService")
public class GetAllFormsServiceImpl implements GetAllFormsService {

    /**
     *
     */
    @Autowired
    protected GetAllFormsMapper getAllFormsMapper;


    @Override
    public List GetAllForms() {
        return getAllFormsMapper.GetAllForms();
    }

    @Override
    public List searchForms(String areaName, String mediumName, String startTime, String endTime) {

        return getAllFormsMapper.searchForms(areaName, mediumName, startTime, endTime);
    }
}
