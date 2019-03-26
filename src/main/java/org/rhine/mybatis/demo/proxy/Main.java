package org.rhine.mybatis.demo.proxy;

/**
 * @author qs.zhou
 * @date 2019/03/25
 */
public class Main {

    public static void main(String[] args) {

        Engine engine = new Car();
        ProxyImplement proxyImplement = new ProxyImplement(engine);

        Engine proxyEngine = ProxyFactory.getInstance(engine, proxyImplement);
        proxyEngine.startEngine();
    }
}
