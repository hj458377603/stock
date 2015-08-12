package org.dream.web.controller.verificationcode;

import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dream.utils.email.EmailUtils;
import org.dream.web.controller.base.BaseController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.octo.captcha.service.image.ImageCaptchaService;

/**
 * 验证码Controller
 * 
 * @author Administrator
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
@Controller
@RequestMapping("/verification")
public class VerificationCodeController extends BaseController {
    Logger              logger = LoggerFactory.getLogger(VerificationCodeController.class);

    @Autowired
    ImageCaptchaService imageCaptchaService;

    @RequestMapping(value = "/getCode")
    public void getCode(String uuid,HttpServletRequest request, HttpServletResponse response) {
        try {
            ByteArrayOutputStream jpegOutputStream = new ByteArrayOutputStream();
            BufferedImage challenge = imageCaptchaService.getImageChallengeForID(uuid,
                    request.getLocale());
            response.setHeader("Cache-Control", "no-store");
            response.setHeader("Pragma", "no-cache");
            response.setDateHeader("Expires", 0L);
            response.setContentType("image/jpeg");

            ImageIO.write(challenge, "jpeg", jpegOutputStream);
            byte[] captchaChallengeAsJpeg = jpegOutputStream.toByteArray();

            ServletOutputStream respOs = response.getOutputStream();
            respOs.write(captchaChallengeAsJpeg);
            respOs.flush();
            respOs.close();
        } catch (IOException e) {
            logger.error("generate captcha image error: {}", e.getMessage());
        }
    }
    
    @RequestMapping(value = "/validateCode")
    public void validateCode(String uuid,String code,HttpServletRequest request, HttpServletResponse response) {
        boolean isvalid= imageCaptchaService.validateResponseForID(uuid, code);
        System.out.println(isvalid);
    }
    
    @RequestMapping(value = "/sendEmail")
    public void sendEmail(HttpServletRequest request){
        EmailUtils.sendEmail();
    }
}
