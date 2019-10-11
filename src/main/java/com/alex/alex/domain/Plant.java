package com.alex.alex.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName("plant")
public class Plant {
	
	@TableId(type = IdType.AUTO,value="id")
	private Integer id;
	
	@TableField("name")
	private String name;
	
	@TableField("miaoshu")
	private String miaoshu;
	
	@TableField("cid")
	private Integer cid;

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
		this.name = name;
	}

	public String getMiaoshu() {
		return miaoshu;
	}

	public void setMiaoshu(String miaoshu) {
		this.miaoshu = miaoshu;
	}

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	@Override
	public String toString() {
		return "Plant [id=" + id + ", name=" + name + ", miaoshu=" + miaoshu
				+ ", cid=" + cid + "]";
	}
	
	
	
}
