package hbi.core.testadmin.controllers;

import com.hand.hap.security.captcha.ICaptchaManager;
import com.hand.hap.security.captcha.impl.DefaultCaptchaManager;
import com.hand.hap.system.controllers.CaptchaController;
import net.sf.json.util.WebUtils;
import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by wayne on 2017/4/17.
 */


@Controller
public class GetCaptchaController {

    private final Logger log = LoggerFactory.getLogger(GetCaptchaController.class);
    @Autowired
    private ICaptchaManager captchaManager;


    public GetCaptchaController() {
    }
    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    @RequestMapping({"/api/public/getVerifiCode"})
    @ResponseBody
    public String code(HttpServletRequest req, HttpServletResponse resp) {


        DefaultCaptchaManager defaultCaptchaManager = (DefaultCaptchaManager)captchaManager;

        Cookie cookie = org.springframework.web.util.WebUtils.getCookie(req, defaultCaptchaManager.getCaptchaKeyName());
        if(cookie == null){
            return "Not Code";
        }
        String captchaKey = cookie.getValue();
        final String key = defaultCaptchaManager.getCategory() + ":" + captchaKey;
        return redisTemplate.opsForValue().get(key);

//        try {
//            resp.setHeader("Pragma", "no-cache");
//            resp.setHeader("Cache-Control", "no-cache");
//            resp.setDateHeader("Expires", 0L);
//            resp.setContentType("image/jpeg");
//            String captchaKey = this.captchaManager.generateCaptchaKey();
//            Cookie cookie = new Cookie(this.captchaManager.getCaptchaKeyName(), captchaKey);
//            cookie.setPath(StringUtils.defaultIfEmpty(req.getContextPath(), "/"));
//            cookie.setMaxAge(-1);
//            resp.addCookie(cookie);
//            this.captchaManager.generateCaptcha(captchaKey, this.captchaManager.generateCaptchaCode(), resp.getOutputStream());
//        } catch (IOException var5) {
//            if(this.log.isErrorEnabled()) {
//                this.log.error("生成验证码失败", var5);
//            }
//        }

    }
}
