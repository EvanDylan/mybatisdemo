package org.rhine.mybatis.demo.spring;

import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.rhine.mybatis.demo.User;
import org.rhine.mybatis.demo.annotation.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:spring-config.xml")
public class IntegrationWithSpring {

    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    @Test
    public void testQueryUser() {
        UserMapper userMapper = sqlSessionTemplate.getMapper(UserMapper.class);
        User user = userMapper.queryUser(1L);
        Assert.assertNotNull(user);
    }

}
