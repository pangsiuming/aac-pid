package com.aac.pid.controller;

import com.aac.pid.domain.Search;
import com.aac.pid.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/search")
public class SearchController {

    @Autowired
    private SearchService searchService;

    @RequestMapping(value = "/param/{menuId}")
    public String getParam(Model model, @PathVariable Integer menuId) {
        Search searchParam = searchService.getParam(menuId);
        model.addAttribute("searchParam", searchParam);
        return "search::search_main";
    }
}
