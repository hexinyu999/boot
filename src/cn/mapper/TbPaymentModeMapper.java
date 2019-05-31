package cn.mapper;

import cn.domain.TbPaymentMode;
import cn.domain.TbPaymentModeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbPaymentModeMapper {
    int countByExample(TbPaymentModeExample example);

    int deleteByExample(TbPaymentModeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbPaymentMode record);

    int insertSelective(TbPaymentMode record);

    List<TbPaymentMode> selectByExample(TbPaymentModeExample example);

    TbPaymentMode selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbPaymentMode record, @Param("example") TbPaymentModeExample example);

    int updateByExample(@Param("record") TbPaymentMode record, @Param("example") TbPaymentModeExample example);

    int updateByPrimaryKeySelective(TbPaymentMode record);

    int updateByPrimaryKey(TbPaymentMode record);
}