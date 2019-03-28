package org.rhine.mybatis.demo.lazyload;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;

/**
 * @author qs.zhou
 * @date 2019/03/28
 */
public class JobTest {

    private SqlSession sqlSession;

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
    }

    @Test
    public void testLazyLoad1() {
        JobMapper jobMapper = sqlSession.getMapper(JobMapper.class);
        jobMapper.queryJobById(1L);
    }

    @Test
    public void testLazyLoad2() {
        JobMapper jobMapper = sqlSession.getMapper(JobMapper.class);
        Job job = jobMapper.queryJobById(1L);
        System.out.println(job.getJobDataList());
    }
}
