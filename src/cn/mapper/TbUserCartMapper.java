package cn.mapper;

import cn.domain.TbUserCart;
import cn.domain.TbUserCartExample;
import cn.domain.TbUserCartKey;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbUserCartMapper {
    int countByExample(TbUserCartExample example);

    int deleteByExample(TbUserCartExample example);

    int deleteByPrimaryKey(TbUserCartKey key);

    int insert(TbUserCart record);

    int insertSelective(TbUserCart record);

    List<TbUserCart> selectByExample(TbUserCartExample example);

    TbUserCart selectByPrimaryKey(TbUserCartKey key);

    int updateByExampleSelective(@Param("record") TbUserCart record, @Param("example") TbUserCartExample example);

    int updateByExample(@Param("record") TbUserCart record, @Param("example") TbUserCartExample example);

    int updateByPrimaryKeySelective(TbUserCart record);

    int updateByPrimaryKey(TbUserCart record);
}