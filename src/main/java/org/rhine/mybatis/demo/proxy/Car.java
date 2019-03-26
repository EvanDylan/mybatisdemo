package org.rhine.mybatis.demo.proxy;

/**
 * @author qs.zhou
 * @date 2019/03/25
 */
public class Car implements Engine {

    @Override
    public void startEngine() {
        System.out.println("start the engine");
    }
}
