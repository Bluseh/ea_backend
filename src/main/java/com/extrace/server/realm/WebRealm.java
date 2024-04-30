package com.extrace.server.realm;

import com.extrace.server.pojo.Customer;
import com.extrace.server.service.CustomerService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

public class WebRealm extends AuthorizingRealm {
    @Autowired
    private CustomerService customerService;
//    @Autowired
//    private AdminPermissionService adminPermissionService;

    //    // 重写获取授权信息方法
    @Override
    public String getName() {
        return "WebRealm";
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        // 获取当前用户的所有权限
//        String username = principalCollection.getPrimaryPrincipal().toString();
//        Set<String> permissions = adminPermissionService.listUrlsByName(username);

        // 将权限放入授权信息中
        SimpleAuthorizationInfo s = new SimpleAuthorizationInfo();
//        s.setStringPermissions(permissions);
        return s;
    }

    // 获取认证信息，即根据 token 中的用户名从数据库中获取密码、盐等并返回
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        System.out.println("authentication:" + getName());
        String principal = token.getPrincipal().toString();
        Customer customer = customerService.findByTelCode(principal);
        String password = customer.getPassword();
        String salt = customer.getSalt();
        return new SimpleAuthenticationInfo(principal, password, ByteSource.Util.bytes(salt), getName());
    }
}
