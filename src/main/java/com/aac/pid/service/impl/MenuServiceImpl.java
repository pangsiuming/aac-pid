package com.aac.pid.service.impl;

import com.aac.pid.domain.Menu;
import com.aac.pid.repository.MenuDao;
import com.aac.pid.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("menuServiceImpl")
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuDao menuDao;

    @Override
    public List<Menu> listMenu() {
        List<Menu> all = menuDao.listMenu();
        List<Menu> menuList = findSubMenu(all, 0);
        return menuList;
    }

    private List<Menu> findSubMenu(List<Menu> menus, Integer pid) {
        List<Menu> menuList = new ArrayList<>();
        List<Menu> temp = new ArrayList<>();
        for (Menu menu : menus) {
            if (menu.getParentMenuId().equals(pid)) {
                temp = findSubMenu(menus, menu.getMenuId());
                if (temp.size() > 0) {
                    menu.setSubMenu(temp);
                }
                menuList.add(menu);
            }
        }
        return menuList;
    }
}
