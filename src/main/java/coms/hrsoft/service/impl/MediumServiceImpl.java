package coms.hrsoft.service.impl;

import coms.hrsoft.bean.Medium;
import coms.hrsoft.mapper.MediumMapper;
import coms.hrsoft.service.MediumService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service("mediumService")
public class MediumServiceImpl implements MediumService {
    @Autowired
    private MediumMapper mediumMapper;

    @Override
    public ArrayList<Medium> listAllMediumName() {

        return mediumMapper.listAllMediumName();
}
}
