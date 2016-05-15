
package com.pzy.service;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import com.pzy.entity.Grade;
import com.pzy.entity.CategorySelect;
import com.pzy.entity.User;
import com.pzy.repository.CategorySelectRepository;
/***
 * 
 * @author qq:263608237
 *
 */
@Service
public class CategorySelectService {
     @Autowired
     private CategorySelectRepository categorySelectRepository;

     public List<CategorySelect> findAll() {
         return (List<CategorySelect>) categorySelectRepository.findAll(new Sort(Direction.DESC, "id"));
     }
     public List<CategorySelect> findByUser(User user) {
          return categorySelectRepository.findByUser(user);
     }
     public Page<CategorySelect> findAll(final int pageNumber, final int pageSize,final Long id){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<CategorySelect> spec = new Specification<CategorySelect>() {
              public Predicate toPredicate(Root<CategorySelect> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (id != null) {
                   predicate.getExpressions().add(cb.equal(root.get("grade").get("id").as(Long.class),id));
              }
              return predicate;
              }
         };
         Page<CategorySelect> result = (Page<CategorySelect>) categorySelectRepository.findAll(spec, pageRequest);
         return result;
     	}
     
     public Page<CategorySelect> findAll(final int pageNumber, final int pageSize,final Integer type ){
         PageRequest pageRequest = new PageRequest(pageNumber - 1, pageSize, new Sort(Direction.DESC, "id"));
         Specification<CategorySelect> spec = new Specification<CategorySelect>() {
              public Predicate toPredicate(Root<CategorySelect> root, CriteriaQuery<?> query, CriteriaBuilder cb) {
              Predicate predicate = cb.conjunction();
              if (type != null) {
                  predicate.getExpressions().add(cb.equal(root.get("type").as(Integer.class),type));
               }
              return predicate;
              }
         };
         Page<CategorySelect> result = (Page<CategorySelect>) categorySelectRepository.findAll(spec, pageRequest);
         return result;
     	}
		public void delete(Long id){
			categorySelectRepository.delete(id);
		}
		public CategorySelect find(Long id){
			  return categorySelectRepository.findOne(id);
		}
		public void save(CategorySelect categorySelect){
			categorySelectRepository.save(categorySelect);
		}
}