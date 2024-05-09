package com.extrace.server.realm;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.pam.ModularRealmAuthenticator;
import org.apache.shiro.realm.Realm;

import java.util.Collection;
import java.util.HashMap;

public class ModularRealm extends ModularRealmAuthenticator {
    @Override
    protected AuthenticationInfo doAuthenticate(AuthenticationToken authenticationToken) throws AuthenticationException {
        assertRealmsConfigured();
        Collection<Realm> realms = getRealms();
        // 登录类型对应的所有Realm
        HashMap<String, Realm> realmHashMap = new HashMap<>(realms.size());

        for (Realm realm : realms) {
            realmHashMap.put(realm.getName(), realm);
        }

        MyToken token = (MyToken) authenticationToken;
        if (token.getType() == 1){
            return  doSingleRealmAuthentication(realmHashMap.get("AndroidRealm"),authenticationToken);
        } else if (token.getType() == 2) {
            return  doSingleRealmAuthentication(realmHashMap.get("WebRealm"),authenticationToken);
        }
        return null;
    }
}
