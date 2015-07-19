import java.util.List;

import org.dream.bean.account.Account;
import org.dream.bean.recommendation.Recommendation;
import org.dream.service.base.intf.account.AccountService;
import org.dream.service.base.intf.recommendation.RecommendationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.testng.AbstractTestNGSpringContextTests;
import org.testng.annotations.Test;

@ContextConfiguration(locations = { "classpath:conf/spring/spring-bean.xml",
        "classpath:conf/spring/spring-servlet.xml"})
public class TestUnit extends AbstractTestNGSpringContextTests {
    @Autowired
    RecommendationService recommendationService;
    
    @Autowired
    AccountService accountService;

    @Test
    public void test1() {
        List<Recommendation> recommendations = recommendationService.queryByPage(1, 5);
        if(recommendations!=null&&recommendations.size()>0){
            for (Recommendation recommendation : recommendations) {
                System.out.println(recommendation.getSzUpsDowns());
            }
        }
    }
    
    
    public void testAccount(){
        Account account = accountService.getAccountInfo("458377603@qq.com");
        if(account!=null){
            System.out.println(account.getEmail());
        }
    }
}
