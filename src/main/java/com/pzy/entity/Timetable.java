package com.pzy.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.data.annotation.Persistent;
/***
 * 课表
 * @author Administrator
 *
 */
@Entity
@Table(name = "t_timetable")
public class Timetable {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	 @ManyToOne(fetch = FetchType.EAGER)
	private Grade grade;
	private Integer week;
	private String begin;
	private String end;
	private Integer num;
	private String room;
	
	@Persistent
	private Integer usernum;
	
	 public Integer getUsernum() {
		return usernum;
	}
	public void setUsernum(Integer usernum) {
		this.usernum = usernum;
	}
	public String getRoom() {
		return room;
	}
	public void setRoom(String room) {
		this.room = room;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	@ManyToOne(fetch = FetchType.EAGER)
	private Category category;
	 @ManyToOne(fetch = FetchType.EAGER)
	private Teacher teacher;
	private Date createDate;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Grade getGrade() {
		return grade;
	}
	public void setGrade(Grade grade) {
		this.grade = grade;
	}
	public Integer getWeek() {
		return week;
	}
	public void setWeek(Integer week) {
		this.week = week;
	}
	public String getBegin() {
		return begin;
	}
	public void setBegin(String begin) {
		this.begin = begin;
	}
	public String getEnd() {
		return end;
	}
	public void setEnd(String end) {
		this.end = end;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
}
