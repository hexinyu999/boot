package cn.mapper;

import cn.domain.TbBillItem;
import cn.domain.TbBillItemExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbBillItemMapper {
    int countByExample(TbBillItemExample example);

    int deleteByExample(TbBillItemExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbBillItem record);

    int insertSelective(TbBillItem record);

    List<TbBillItem> selectByExample(TbBillItemExample example);

    TbBillItem selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbBillItem record, @Param("example") TbBillItemExample example);

    int updateByExample(@Param("record") TbBillItem record, @Param("example") TbBillItemExample example);

    int updateByPrimaryKeySelective(TbBillItem record);

    int updateByPrimaryKey(TbBillItem record);
}