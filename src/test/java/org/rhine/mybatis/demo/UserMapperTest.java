package org.rhine.mybatis.demo;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;

public class UserMapperTest {

    private SqlSession sqlSession;

    private SqlSession sqlSession2;

    @Before
    public void prepareSqlSession() {
        String resource = "mybatis-config.xml";
        InputStream inputStream = null;
        try {
            inputStream = Resources.getResourceAsStream(resource);
        } catch (IOException e) {
            e.printStackTrace();
        }
        SqlSessionFactory sqlSessionFactory =
                new SqlSessionFactoryBuilder().build(inputStream);
        sqlSession = sqlSessionFactory.openSession();
        sqlSession2 = sqlSessionFactory.openSession();
    }

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

    @Test
    public void secondLevelCacheTest() {
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        UserMapper userMapper2 = sqlSession2.getMapper(UserMapper.class);
        User user = userMapper.queryUser(1L);
        sqlSession.close();
        User user2 = userMapper2.queryUser(1L);
        System.out.println(user == user2);
    }
}