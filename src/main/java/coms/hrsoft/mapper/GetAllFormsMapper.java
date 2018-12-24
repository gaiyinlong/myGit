package coms.hrsoft.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 *
 */
public interface GetAllFormsMapper {

   List GetAllForms();
   List searchForms(@Param("areaName") String areaName,@Param("mediumName")String mediumName,@Param("start") String start,@Param("end") String end);
}
