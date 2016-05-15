package com.pzy.repository;
import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

import com.pzy.entity.CategorySelect;
import com.pzy.entity.Timetable;
import com.pzy.entity.User;
public interface CategorySelectRepository extends PagingAndSortingRepository<CategorySelect, Long>,JpaSpecificationExecutor<CategorySelect>{
	public List<CategorySelect> findByUser(User user);

	public List<CategorySelect>   findByTimeTable(Timetable bean);
}

