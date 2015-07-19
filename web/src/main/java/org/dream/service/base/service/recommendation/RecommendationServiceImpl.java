package org.dream.service.base.service.recommendation;

import java.util.List;
import java.util.Map;

import org.dream.bean.recommendation.Recommendation;
import org.dream.dao.recommendation.RecommendationDao;
import org.dream.service.base.intf.recommendation.RecommendationService;
import org.dream.service.base.service.BaseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 推荐服务接口
 * 
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
@Service
public class RecommendationServiceImpl extends BaseService implements RecommendationService {

    @Autowired
    RecommendationDao recommendationDao;

    /**
     * 分页查询历史记录
     * 
     * @param pageIndex
     * @param pageSize
     * @return
     * @see [相关类/方法](可选)
     * @since [产品/模块版本](可选)
     */
    public List<Recommendation> queryByPage(int pageIndex, int pageSize) {
        Map<String, Object> map = getQueryPageMap(pageIndex, pageSize);
        return recommendationDao.queryRecommendationsByPage(map);
    }
}
