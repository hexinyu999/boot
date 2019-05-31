package cn.mapper;

import cn.domain.TbLink;
import cn.domain.TbLinkExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbLinkMapper {
    int countByExample(TbLinkExample example);

    int deleteByExample(TbLinkExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbLink record);

    int insertSelective(TbLink record);

    List<TbLink> selectByExample(TbLinkExample example);

    TbLink selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbLink record, @Param("example") TbLinkExample example);

    int updateByExample(@Param("record") TbLink record, @Param("example") TbLinkExample example);

    int updateByPrimaryKeySelective(TbLink record);

    int updateByPrimaryKey(TbLink record);
}