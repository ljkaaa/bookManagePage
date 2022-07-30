package factory;

import mapper.BookMapper;
import org.apache.ibatis.session.SqlSession;

public class DAOFactory {
    public static BookMapper getBookDAOInstance(SqlSession sqlSession){
        return sqlSession.getMapper(BookMapper.class);
    }
}
