package cn.mapper;

import cn.domain.TbBoard;
import cn.domain.TbBoardExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbBoardMapper {
    int countByExample(TbBoardExample example);

    int deleteByExample(TbBoardExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbBoard record);

    int insertSelective(TbBoard record);

    List<TbBoard> selectByExampleWithBLOBs(TbBoardExample example);

    List<TbBoard> selectByExample(TbBoardExample example);

    TbBoard selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbBoard record, @Param("example") TbBoardExample example);

    int updateByExampleWithBLOBs(@Param("record") TbBoard record, @Param("example") TbBoardExample example);

    int updateByExample(@Param("record") TbBoard record, @Param("example") TbBoardExample example);

    int updateByPrimaryKeySelective(TbBoard record);

    int updateByPrimaryKeyWithBLOBs(TbBoard record);

    int updateByPrimaryKey(TbBoard record);
}