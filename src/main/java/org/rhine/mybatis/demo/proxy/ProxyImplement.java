package org.rhine.mybatis.demo.proxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/**
 * @author qs.zhou
 * @date 2019/03/25
 */
public class ProxyImplement implements InvocationHandler {

    private Engine engine;

    public ProxyImplement(Engine engine) {
        this.engine = engine;
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        System.out.println("准备启动引擎...");
        Object result = method.invoke(engine, args);
        System.out.println("引擎启动完成...");
        return result;
    }
}
