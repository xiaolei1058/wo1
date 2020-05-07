package srzx.engine;

import java.util.List;

public class Pager<E> {
    //limit M,N;
    /**
     * 每页显示多少条
     */
    private int pageSize;

    /**
     * 第几页
     */
    private int pageIndex;

    /**
     * 总共多少页
     */
    private int totalPage;


    /**
     * 总共多少条记录
     */
    private int totalRecord;

    private List<E> datas;


    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getTotalRecord() {
        return totalRecord;
    }

    public void setTotalRecord(int totalRecord) {
        this.totalRecord = totalRecord;
    }

    public List<E> getDatas() {
        return datas;
    }

    public void setDatas(List<E> datas) {
        this.datas = datas;
    }

    public Pager(int pageSize, int pageIndex, int totalPage, int totalRecord, List<E> datas) {
        this.pageSize = pageSize;
        this.pageIndex = pageIndex;
        this.totalPage = totalPage;
        this.totalRecord = totalRecord;
        this.datas = datas;
    }

    public Pager(){

    }

    @Override
    public String toString() {
        return "Pager{" +
                "pageSize=" + pageSize +
                ", pageIndex=" + pageIndex +
                ", totalPage=" + totalPage +
                ", totalRecord=" + totalRecord +
                ", datas=" + datas +
                '}';
    }
}
