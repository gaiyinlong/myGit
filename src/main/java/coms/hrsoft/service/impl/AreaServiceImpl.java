package coms.hrsoft.service.impl;

import coms.hrsoft.bean.Areas;
import coms.hrsoft.mapper.AreasMapper;
import coms.hrsoft.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 *
 */
@Service("areaService")
public class AreaServiceImpl implements AreaService {

@Autowired
    private AreasMapper areasMapper;


    @Override
    public List<Areas> ListAllAreas() {
        return areasMapper.ListAllAreas();
    }


}