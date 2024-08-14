package com.dao;

import com.entity.XinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.view.XinxiView;

/**
 * 信息公开 Dao 接口
 *
 * @author 
 */
public interface XinxiDao extends BaseMapper<XinxiEntity> {

   List<XinxiView> selectListView(Pagination page,@Param("params")Map<String,Object> params);

}
