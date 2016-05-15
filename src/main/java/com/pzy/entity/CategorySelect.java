package com.pzy.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
/***
 * 课表
 * @author Administrator
 *
 */
@Entity
@Table(name = "t_CategorySelect")
public class CategorySelect {
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private User user;
	 
	 @ManyToOne(fetch = FetchType.EAGER)
	private Timetable timeTable;
	
	private Date createDate;

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Timetable getTimeTable() {
		return timeTable;
	}

	public void setTimeTable(Timetable timeTable) {
		this.timeTable = timeTable;
	}
	
	
}
