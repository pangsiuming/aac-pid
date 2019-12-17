package com.aac.pid.domain;

import lombok.Data;
import org.springframework.stereotype.Component;

import javax.persistence.Transient;
import java.io.Serializable;
import java.util.List;

@Data
@Component
public class Menu implements Serializable {

    // 菜单ID
    private Integer menuId;
    // 菜单名
    private String menuName;
    // 父级菜单ID
    private Integer parentMenuId;
    // 菜单类型
    private String menuType;
    // 子菜单
    @Transient
    private List<Menu> subMenu;
}
