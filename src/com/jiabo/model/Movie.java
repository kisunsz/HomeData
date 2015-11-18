package com.jiabo.model;

public class Movie {
    private Integer id;

    private String name;

    private String photo;

    private Integer doubanid;

    private String path;

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

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo == null ? null : photo.trim();
    }

    public Integer getDoubanid() {
        return doubanid;
    }

    public void setDoubanid(Integer doubanid) {
        this.doubanid = doubanid;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path == null ? null : path.trim();
    }
}