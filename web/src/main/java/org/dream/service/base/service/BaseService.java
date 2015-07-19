package org.dream.service.base.service;

import java.util.HashMap;
import java.util.Map;

/**
 * 基础服务
 * 
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public class BaseService {
    /**
     * 获取分页的Map参数
     *
     * @param map
     * @param pageIndex
     * @param pageSize
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    public Map<String, Object> getQueryPageMap(Map<String, Object> map, int pageIndex, int pageSize) {
        if (map == null) {
            map = new HashMap<String, Object>();
        }
        map.put("startIndex", (pageIndex - 1) * pageSize);
        map.put("pageSize", pageSize);
        return map;
    }

    /**
     * 获取分页的Map参数
     * 
     * @param pageIndex
     * @param pageSize
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    public Map<String, Object> getQueryPageMap(int pageIndex, int pageSize) {
        return getQueryPageMap(null, pageIndex, pageSize);
    }
}
