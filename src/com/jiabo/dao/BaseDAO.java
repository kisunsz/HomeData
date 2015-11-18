package com.jiabo.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jiabo.util.Const;

@Repository
public class BaseDAO {
	public static final String SQL_INSERT="insert";
	public static final String SQL_SELECTALL="selectAll";
	public static final String SQL_SELECTBYID="selectById";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public <T> List<T> selectList(String sql, Object params, Class<T> clazz) {
		String mapper = getMapper(sql, clazz);
		return sqlSessionTemplate.selectList(mapper, params);
	}

	public <T> T selectOne(String sql, Object params, Class<T> clazz) {
		String mapper = getMapper(sql, clazz);
		return sqlSessionTemplate.selectOne(mapper, params);
	}

	public <T> boolean insertObject(String sql, Object object) {
		String mapper = getMapper(sql, object.getClass());
		return sqlSessionTemplate.insert(mapper, object) > 0;
	}

	private String getMapper(String sql, Class<?> clazz) {
		String className = clazz.getName().substring(
				clazz.getPackage().getName().length());
		String mapper = Const.MAPPER + className + "Mapper" + Const.TOKEN + sql;
		return mapper;
	}

	public <T> boolean deleteAll(String sql, Class<T> clazz) {
		String mapper = getMapper(sql, clazz);
		return sqlSessionTemplate.delete(mapper) > 0;
	}

	public <T> boolean updateById(String sql, Object obj) {
		String mapper = getMapper(sql, obj.getClass());
		return sqlSessionTemplate.update(mapper, obj) > 0;
	}

	public <T> boolean deleteById(String sql, Object obj) {
		String mapper = getMapper(sql, obj.getClass());
		return sqlSessionTemplate.delete(mapper, obj) > 0;
	}
}
