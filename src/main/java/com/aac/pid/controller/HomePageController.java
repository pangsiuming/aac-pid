package com.aac.pid.controller;

import com.aac.pid.domain.Menu;
import com.aac.pid.domain.Search;
import com.aac.pid.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class HomePageController {

	@Autowired
	private MenuService menuService;

	@RequestMapping(value = "")
	public String index(Model model) {
		List<Menu> menu = menuService.listMenu();
		model.addAttribute("menuList", menu);
		model.addAttribute("searchParam", new Search());
		return "index";
	}

	@RequestMapping(value = "/home")
	public String home(Model model, @RequestParam(value="parentId",required = false) Integer parentId,@RequestParam(value = "menuId",required = false)Integer menuId
	,@RequestParam(value = "id1",required = false)Integer id1,@RequestParam(value = "id2",required = false)Integer id2) {
		List<Menu> menu = menuService.listMenu();
		model.addAttribute("menuList", menu);
		model.addAttribute("parentId", parentId);
		model.addAttribute("menuId", menuId);
		return "product";
	}

	@RequestMapping(value = "/compare")
	public String compare(Model model, @RequestParam(value="parentId",required = false) Integer parentId,@RequestParam(value = "menuId",required = false)Integer menuId
			,@RequestParam(value = "id1",required = false)Integer id1,@RequestParam(value = "id2",required = false)Integer id2) {
		List<Menu> menu = menuService.listMenu();
		model.addAttribute("menuList", menu);
		model.addAttribute("id1", id1);
		model.addAttribute("id2", id2);
		return "compare";
	}
}