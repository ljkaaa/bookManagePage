package web;

import com.alibaba.fastjson.JSON;
import service.BookService;
import vo.Book;
import vo.PageBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.util.List;

@WebServlet("/book/*")
public class BookServlet extends BaseServlet {
    BookService bookService = new BookService();

    public void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        BufferedReader bufferedReader = request.getReader();
        String str = bufferedReader.readLine();
        Book book = JSON.parseObject(str, Book.class);
        if(bookService.insert(book)>0) {
            response.getWriter().write("success");
        }
        else{
            response.getWriter().write("unsuccessful");
        }
    }

    public void deleteByBarCodes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BufferedReader bufferedReader = request.getReader();
        String str = bufferedReader.readLine();
        int []ids = JSON.parseObject(str, int[].class);
        if(bookService.deleteByBarCodes(ids)>0) {
            response.getWriter().write("success");
        }
        else{
            response.getWriter().write("unsuccessful");
        }
    }

    public void selectAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Book> books = bookService.queryAllBooks();
        String jsonString = JSON.toJSONString(books);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    public void selectByPage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int currentPage = Integer.parseInt(request.getParameter("currentPage"));
        int size = Integer.parseInt(request.getParameter("size"));
        PageBean<Book> bookPageBean = bookService.getPageBean(currentPage,size);
        String jsonString = JSON.toJSONString(bookPageBean);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }

    public void selectByPageAndCondition(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        int currentPage = Integer.parseInt(request.getParameter("currentPage"));
        int size = Integer.parseInt(request.getParameter("size"));

        BufferedReader bufferedReader = request.getReader();
        String str = bufferedReader.readLine();
        Book book = JSON.parseObject(str, Book.class);
        PageBean<Book> bookPageBean = bookService.getPageBeanByCondition(currentPage,size,book);
        String jsonString = JSON.toJSONString(bookPageBean);
        response.setContentType("text/json;charset=utf-8");
        response.getWriter().write(jsonString);
    }
}
