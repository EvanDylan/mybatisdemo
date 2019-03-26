package org.rhine.mybatis.demo.proxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;

/**
 * @author qs.zhou
 * @date 2019/03/25
 */
public class ProxyFactory {

    public static <T> T getInstance(Engine engine, InvocationHandler invocationHandler) {
        return (T) Proxy.newProxyInstance(engine.getClass().getClassLoader(), engine.getClass().getInterfaces(), invocationHandler);
    }
}
