package cn.mapper;

import cn.domain.TbBill;
import cn.domain.TbBillExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbBillMapper {
    int countByExample(TbBillExample example);

    int deleteByExample(TbBillExample example);

    int deleteByPrimaryKey(String id);

    int insert(TbBill record);

    int insertSelective(TbBill record);

    List<TbBill> selectByExample(TbBillExample example);

    TbBill selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") TbBill record, @Param("example") TbBillExample example);

    int updateByExample(@Param("record") TbBill record, @Param("example") TbBillExample example);

    int updateByPrimaryKeySelective(TbBill record);

    int updateByPrimaryKey(TbBill record);
}