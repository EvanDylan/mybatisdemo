package org.rhine.mybatis.demo;

import org.junit.Assert;
import org.junit.Test;

public class UserMapperTest extends BaseTest {



    @Test
    public void queryUserTest() {
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        User user = userMapper.queryUser(1L);
        System.out.println(user.toString());
        Assert.assertNotNull(user);
    }

    /**
     * 验证一级缓存的存在
     */
    @Test
    public void firstLevelCacheTest() {
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        User user1 = userMapper.queryUser(1L);
        User user2 = userMapper.queryUser(1L);
        System.out.println(user1 == user2);
        Assert.assertSame(user1, user2);
    }

    /**
     * 验证二级缓存的存在
     */
    @Test
    public void secondLevelCacheTest() {
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        UserMapper userMapper2 = sqlSession2.getMapper(UserMapper.class);
        User user = userMapper.queryUser(1L);
        sqlSession.commit();
        User user2 = userMapper2.queryUser(1L);
        System.out.println(user == user2);
    }
}