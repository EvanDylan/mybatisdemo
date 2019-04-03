package org.rhine.mybatis.demo.annotation;

import org.junit.Assert;
import org.junit.Test;
import org.rhine.mybatis.demo.BaseTest;
import org.rhine.mybatis.demo.User;

public class UserMapperTest extends BaseTest {

    @Test
    public void queryUserTest() {
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        User user = userMapper.queryUser(1L);
        System.out.println(user.toString());
        Assert.assertNotNull(user);
    }

}
