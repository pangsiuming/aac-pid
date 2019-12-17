package com.aac.pid.domain;

import lombok.Data;
import org.springframework.stereotype.Component;
import javax.persistence.Transient;
import java.io.Serializable;

@Data
@Component
public class Search implements Serializable {

    // 搜索ID
    private Integer searchId;
    // 菜单ID
    private Integer menuId;
    // 参数列
    private String col1;
    private String col2;
    private String col3;
    private String col4;
    private String col5;
    private String col6;
    private String col7;

    @Transient
    private String searchType;
    @Transient
    private String menuName;
}
