package cn.mapper;

import cn.domain.TbProduct;
import cn.domain.TbProductExample;
import cn.domain.TbProductVO;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbProductMapper {
    int countByExample(TbProductExample example);

    int deleteByExample(TbProductExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbProduct record);

    int insertSelective(TbProduct record);

    List<TbProduct> selectByExampleWithBLOBs(TbProductExample example);

    List<TbProduct> selectByExample(TbProductExample example);

    TbProduct selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbProduct record, @Param("example") TbProductExample example);

    int updateByExampleWithBLOBs(@Param("record") TbProduct record, @Param("example") TbProductExample example);

    int updateByExample(@Param("record") TbProduct record, @Param("example") TbProductExample example);

    int updateByPrimaryKeySelective(TbProduct record);

    int updateByPrimaryKeyWithBLOBs(TbProduct record);

    int updateByPrimaryKey(TbProduct record);
    List<TbProductVO> selectBySelf(Integer id);
}