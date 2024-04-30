package com.extrace.server.realm;

import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.UsernamePasswordToken;

public class MyToken extends UsernamePasswordToken {
    private int type;
    public MyToken(String userName, String password, int type) {
        super(userName, password);
        System.out.println(getPassword());
        System.out.println(getCredentials());

        this.type = type;
    }
    public int getType() {
        return this.type;
    }
}
