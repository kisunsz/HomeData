package com.jiabo.model;

import java.util.Date;

public class Gallery {
    private Integer id;

    private String title;

    private Date updatetime;

    private Integer filestorageid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Date getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(Date updatetime) {
        this.updatetime = updatetime;
    }

    public Integer getFilestorageid() {
        return filestorageid;
    }

    public void setFilestorageid(Integer filestorageid) {
        this.filestorageid = filestorageid;
    }
}