package cn.mapper;

import cn.domain.TbCategoryMain;
import cn.domain.TbCategoryMainExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbCategoryMainMapper {
    int countByExample(TbCategoryMainExample example);

    int deleteByExample(TbCategoryMainExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbCategoryMain record);

    int insertSelective(TbCategoryMain record);

    List<TbCategoryMain> selectByExample(TbCategoryMainExample example);

    TbCategoryMain selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbCategoryMain record, @Param("example") TbCategoryMainExample example);

    int updateByExample(@Param("record") TbCategoryMain record, @Param("example") TbCategoryMainExample example);

    int updateByPrimaryKeySelective(TbCategoryMain record);

    int updateByPrimaryKey(TbCategoryMain record);
}