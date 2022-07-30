package mapper;

import org.apache.ibatis.annotations.Param;
import vo.Book;

import java.util.List;

public interface BookMapper {
    int insert(Book book);
    int delete(int barCode);
    int deleteByBarCodes(@Param("barCodes") int []barCodes);
    int update(Book book);
    int getCount();
    List<Book> selectByPage(@Param("begin") int begin,@Param("size") int size);

    int getConditionCount(Book book);

    List<Book> selectByPageAndCondition(@Param("begin") int begin,@Param("size") int size,@Param("book") Book book);
    Book queryByBarCode(int barCode);
    List<Book> queryByName(String name);
    List<Book> queryAllBooks();
}
