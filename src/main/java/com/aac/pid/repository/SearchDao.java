package com.aac.pid.repository;

import com.aac.pid.domain.Search;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface SearchDao {

    Search getParam(Integer menuId);
}
