package org.rhine.mybatis.demo.spring;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.rhine.mybatis.demo.annotation.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:spring-config.xml")
public class IntegrationWithSpring {

    @Autowired
    private UserMapper userMapper;

    @Test
    @Transactional
    public void testDeleteUserById() {
        Assert.assertNotNull(userMapper.deleteUserById(1L));
    }
}
