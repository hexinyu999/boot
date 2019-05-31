package cn;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import cn.domain.TbProductVO;

public class TestMybatis {
	@Test
	public void testMybatis() throws Exception{
		//读取配置文件
		InputStream inputStream=Resources.getResourceAsStream("mybatis-config.xml");
		//创建sql会话工厂类-理解成用于 PreparedStatement对象的对象
		SqlSessionFactory sqlSessionFactory=
				new SqlSessionFactoryBuilder().build(inputStream);
		//获得sqlSession会话工厂类，相当于拿到PreparedStatement对象
		SqlSession sqlSession=sqlSessionFactory.openSession();	
		//findCustomerByIds findByBindName
		List<TbProductVO> pro=
				sqlSession.selectList("cn.mapper.TbProductMapper.selectBySelf",1);
		for(TbProductVO e:pro)
			System.out.println(e);
		sqlSession.commit();
		sqlSession.close();
	}
}
