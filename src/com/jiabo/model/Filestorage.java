package com.jiabo.model;

public class Filestorage {
    private Integer id;

    private String path;

    private String name;

    private Integer linkid;

    private Integer type;

    private Integer isdir;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path == null ? null : path.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getLinkid() {
        return linkid;
    }

    public void setLinkid(Integer linkid) {
        this.linkid = linkid;
    }

    public Integer getType() {
        return type;
    }

    public void setType(Integer type) {
        this.type = type;
    }

    public Integer getIsdir() {
        return isdir;
    }

    public void setIsdir(Integer isdir) {
        this.isdir = isdir;
    }
}