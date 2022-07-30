package vo;

import java.util.List;

public class PageBean<T> {
    int totalPage;
    List<T> rows;

    public PageBean() {
    }

    public PageBean(int totalPage, List<T> rows) {
        this.totalPage = totalPage;
        this.rows = rows;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }
}
