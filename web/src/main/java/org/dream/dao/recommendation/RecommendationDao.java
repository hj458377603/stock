package org.dream.dao.recommendation;

import java.util.List;
import java.util.Map;

import org.dream.bean.recommendation.Recommendation;

/**
 * 股票推荐数据库访问类
 *
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public interface RecommendationDao {
    List<Recommendation> queryRecommendationsByPage(Map<String, Object> map);
}
