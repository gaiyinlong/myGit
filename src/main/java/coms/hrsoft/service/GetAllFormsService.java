package coms.hrsoft.service;

import java.util.List;

/**
 *
 */
public interface GetAllFormsService {

    List GetAllForms();
    List searchForms(String areaName,String mediumName,String startTime, String endTime);
}
