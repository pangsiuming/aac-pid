package com.aac.pid.repository;

import com.aac.pid.domain.Menu;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MenuDao {

    List<Menu> listMenu();
}
