package org.dream.service.base.intf.recommendation;

import java.util.List;

import org.dream.bean.recommendation.Recommendation;

/**
 * 推荐服务接口
 *
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public interface RecommendationService {
    
    /**
     * 分页查询历史记录
     *
     * @param pageIndex
     * @param pageSize
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    List<Recommendation> queryByPage(int pageIndex,int pageSize);
}
