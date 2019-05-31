package cn.mapper;

import cn.domain.TbCategoryBranch;
import cn.domain.TbCategoryBranchExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbCategoryBranchMapper {
    int countByExample(TbCategoryBranchExample example);

    int deleteByExample(TbCategoryBranchExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbCategoryBranch record);

    int insertSelective(TbCategoryBranch record);

    List<TbCategoryBranch> selectByExample(TbCategoryBranchExample example);

    TbCategoryBranch selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbCategoryBranch record, @Param("example") TbCategoryBranchExample example);

    int updateByExample(@Param("record") TbCategoryBranch record, @Param("example") TbCategoryBranchExample example);

    int updateByPrimaryKeySelective(TbCategoryBranch record);

    int updateByPrimaryKey(TbCategoryBranch record);
}