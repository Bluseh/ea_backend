package com.extrace.server.config;

import com.extrace.server.filter.MyFilter;
import com.extrace.server.realm.ModularRealm;
import com.extrace.server.realm.MyRealm;
import com.extrace.server.realm.WebRealm;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.CookieRememberMeManager;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.apache.shiro.web.servlet.SimpleCookie;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import javax.servlet.Filter;
import java.util.*;

@Configuration
public class ShiroConfig {
    @Bean
    public static LifecycleBeanPostProcessor getLifecycleBeanProcessor() {
        return new LifecycleBeanPostProcessor();
    }

    @Bean
    public ShiroFilterFactoryBean shiroFilter(DefaultWebSecurityManager securityManager) {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        shiroFilterFactoryBean.setSecurityManager(securityManager);

        Map<String, String > filterChainDefinitionMap = new LinkedHashMap<String, String>();
        Map<String, Filter> myFilter = new HashMap<>();

        // 设置自定义过滤器名称为 url
        myFilter.put("auth", new MyFilter());

        // 对管理接口的访问启用自定义拦截（url 规则），即执行 URLPathMatchingFilter 中定义的过滤方法
        filterChainDefinitionMap.put("/**", "auth");
        // 启用自定义过滤器
        shiroFilterFactoryBean.setFilters(myFilter);
        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
        return shiroFilterFactoryBean;
    }

    @Bean
    public DefaultWebSecurityManager securityManager(MyRealm realm, WebRealm webRealm,
                                                     CookieRememberMeManager rememberMeManager,
                                                     ModularRealm modularRealm) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setAuthenticator(modularRealm);
        List<Realm> realms = new ArrayList<>();
        realms.add(realm);
        realms.add(webRealm);
        securityManager.setRealms(realms);
        securityManager.setRememberMeManager(rememberMeManager);
        return securityManager;
    }

    @Bean
    public ModularRealm ModularRealm(){
        //自己重写的ModularRealmAuthenticator
        ModularRealm modularRealm = new ModularRealm();
        return modularRealm;
    }

    @Bean
    public MyRealm getMyRealm(HashedCredentialsMatcher hashedCredentialsMatcher) {
        MyRealm wjRealm = new MyRealm();
        wjRealm.setCredentialsMatcher(hashedCredentialsMatcher);
        return wjRealm;
    }
    @Bean
    public WebRealm getWebRealm(HashedCredentialsMatcher hashedCredentialsMatcher) {
        WebRealm webRealm = new WebRealm();
        webRealm.setCredentialsMatcher(hashedCredentialsMatcher);
        return webRealm;
    }

    @Bean
    public HashedCredentialsMatcher hashedCredentialsMatcher() {
        HashedCredentialsMatcher hashedCredentialsMatcher = new HashedCredentialsMatcher();
        hashedCredentialsMatcher.setHashAlgorithmName("md5");
        hashedCredentialsMatcher.setHashIterations(2);
        return hashedCredentialsMatcher;
    }

    @Bean
    public CookieRememberMeManager rememberMeManager(SimpleCookie rememberMeCookie) {
        CookieRememberMeManager cookieRememberMeManager = new CookieRememberMeManager();
        cookieRememberMeManager.setCookie(rememberMeCookie);
        cookieRememberMeManager.setCipherKey("EVANNIGHTLY_WAOU".getBytes());
        return cookieRememberMeManager;
    }

    @Bean
    public SimpleCookie rememberMeCookie() {
        SimpleCookie simpleCookie = new SimpleCookie("rememberMe");
        simpleCookie.setMaxAge(259200);
        return simpleCookie;
    }
}
