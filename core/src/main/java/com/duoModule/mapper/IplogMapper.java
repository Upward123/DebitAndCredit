package com.duoModule.mapper;

import com.duoModule.domain.Iplog;
import com.duoModule.dto.IplogQueryObject;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface IplogMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Iplog record);

    Iplog selectByPrimaryKey(Long id);

    List<Iplog> selectAll();

    int updateByPrimaryKey(Iplog record);

    int queryForCount(@Param("iplogQueryObject") IplogQueryObject iplogQueryObject, @Param("username") String username);

    List<Iplog> queryForPage(@Param("iplogQueryObject") IplogQueryObject iplogQueryObject, @Param("username") String username);
}