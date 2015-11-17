package com.jiabo.model;

public class Movie  {
    private Integer id;

    private String name;

    private Filestorage photo;

    private Integer filestorageid;

    private Integer doubanid;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Filestorage getPhoto() {
        return photo;
    }

    public void setPhoto(Filestorage photo) {
        this.photo = photo;
    }

    public Integer getFilestorageid() {
        return filestorageid;
    }

    public void setFilestorageid(Integer filestorageid) {
        this.filestorageid = filestorageid;
    }

    public Integer getDoubanid() {
        return doubanid;
    }

    public void setDoubanid(Integer doubanid) {
        this.doubanid = doubanid;
    }
}