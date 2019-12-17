package com.aac.pid.service.impl;

import com.aac.pid.domain.Search;
import com.aac.pid.repository.SearchDao;
import com.aac.pid.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("searchServiceImpl")
public class SearchServiceImpl implements SearchService {

    @Autowired
    private SearchDao searchDao;

    @Override
    public Search getParam(Integer menuId) {
        Search param = searchDao.getParam(menuId);
        return param;
    }
}
