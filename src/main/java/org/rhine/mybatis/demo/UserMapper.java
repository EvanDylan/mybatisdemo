package org.rhine.mybatis.demo;

public interface UserMapper {

    User queryUser(Long id);

    Integer deleteById(Long id);

}
