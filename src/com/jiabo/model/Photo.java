package com.jiabo.model;

import java.util.Date;

public class Photo {
    private Integer id;

    private String title;

    private Integer type;

    private Date updatetime;

    private Integer filestorageid;

    private Integer galleryid;

    private Integer zipfilestorageid;

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

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
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

    public Integer getGalleryid() {
        return galleryid;
    }

    public void setGalleryid(Integer galleryid) {
        this.galleryid = galleryid;
    }

    public Integer getZipfilestorageid() {
        return zipfilestorageid;
    }

    public void setZipfilestorageid(Integer zipfilestorageid) {
        this.zipfilestorageid = zipfilestorageid;
    }
}