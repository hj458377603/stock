package org.dream.web.controller.stock;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dream.bean.errorcode.ErrorCode;
import org.dream.bean.recommendation.Recommendation;
import org.dream.bean.response.ResultBean;
import org.dream.service.base.intf.recommendation.RecommendationService;
import org.dream.web.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 〈一句话功能简述〉<br>
 * 〈功能详细描述〉
 * 
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
@Controller
@RequestMapping("/recommendation")
public class StockController extends BaseController {
    private static final int PAGE_SIZE = 10;

    @Autowired
    RecommendationService    recommendationService;

    @RequestMapping(value = "/more", method = RequestMethod.GET)
    public void more(Integer pageIndex, HttpServletRequest request, HttpServletResponse response,
            ModelMap modelMap) {
        String res = "";
        if (pageIndex == null) {
            pageIndex = 0;
        }
        List<Recommendation> result = recommendationService.queryByPage(pageIndex, PAGE_SIZE);
        ResultBean<List<Recommendation>> responseBean=new ResultBean<List<Recommendation>>(ErrorCode.SYSTEM_SUCCESS,result);
        if (result != null) {
            res = gson.toJson(responseBean);
        }
        ajaxJson(response, res);
    }
}
