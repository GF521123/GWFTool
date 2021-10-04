package com.gwf.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "tableone")
public class Company {
    @Id
    @Column(name="O_ID" )
    private Integer id;//编号，主键
    @Column(name ="O_Uid")
    private String ouId;//系统编码
    @Column(name ="O_Uname")
    private String oname;//公司名称
    @Column(name ="O_text")
    private String otext;//公司简称
    @Column(name ="O_leve")
    private String oleve;//省/市级
    @Column(name ="O_time")
    private String otime;//时间
    @Column(name ="O_Tabout")
    private String otabout;//说明

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }


    public String getOuId() {
        return ouId;
    }

    public void setOuId(String ouId) {
        this.ouId = ouId;
    }

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public String getOtext() {
        return otext;
    }

    public void setOtext(String otext) {
        this.otext = otext;
    }

    public String getOleve() {
        return oleve;
    }

    public void setOleve(String oleve) {
        this.oleve = oleve;
    }

    public String getOtime() {
        return otime;
    }

    public void setOtime(String otime) {
        this.otime = otime;
    }

    public String getOtabout() {
        return otabout;
    }

    public void setOtabout(String otabout) {
        this.otabout = otabout;
    }
}