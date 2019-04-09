package org.rhine.mybatis.demo.annotation;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;
import org.rhine.mybatis.demo.User;
import org.springframework.transaction.annotation.Transactional;

@Transactional
public interface UserMapper {

    @ResultType(org.rhine.mybatis.demo.User.class)
    @Select("select * from user where id = #{id}")
    User queryUser(@Param("id") Long id);

    @ResultType(Long.class)
    @Delete("delete from user where id  = #{id}")
    Long deleteUserById(@Param("id") Long id);

}
