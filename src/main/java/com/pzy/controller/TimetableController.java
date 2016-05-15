package com.pzy.controller;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pzy.entity.CategorySelect;
import com.pzy.entity.Teacher;
import com.pzy.entity.Timetable;
import com.pzy.entity.User;
import com.pzy.service.CategorySelectService;
import com.pzy.service.CategoryService;
import com.pzy.service.GradeService;
import com.pzy.service.TeacherService;
import com.pzy.service.TimetableService;
/***
 * 课表管理
 * @author panchaoyang
 *qq 263608237
 */
@Controller
@RequestMapping("/admin/timetable")
public class TimetableController {
	@Autowired
	private TimetableService timetableService;
	@Autowired
	private GradeService gradeService;
	@Autowired
	private TeacherService teacherService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private CategorySelectService categorySelectService;
	@InitBinder  
	protected void initBinder(HttpServletRequest request,   ServletRequestDataBinder binder) throws Exception {   
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true)); 
	}  
	
	@RequestMapping("index")
	public String index(Model model) {
		model.addAttribute("teachers", teacherService.findAll());
		model.addAttribute("grades", gradeService.findAll());
		model.addAttribute("categorys", categoryService.findAll());
		model.addAttribute("list11", timetableService.findByGradeAndWeek(1, 1));
		model.addAttribute("list12", timetableService.findByGradeAndWeek(1, 2));
		model.addAttribute("list13", timetableService.findByGradeAndWeek(1, 3));
		model.addAttribute("list14", timetableService.findByGradeAndWeek(1, 4));
		model.addAttribute("list15", timetableService.findByGradeAndWeek(1, 5));
		model.addAttribute("list16", timetableService.findByGradeAndWeek(1, 6));
		model.addAttribute("list17", timetableService.findByGradeAndWeek(1, 7));
		
		
		model.addAttribute("list21", timetableService.findByGradeAndWeek(2, 1));
		model.addAttribute("list22", timetableService.findByGradeAndWeek(2, 2));
		model.addAttribute("list23", timetableService.findByGradeAndWeek(2, 3));
		model.addAttribute("list24", timetableService.findByGradeAndWeek(2, 4));
		model.addAttribute("list25", timetableService.findByGradeAndWeek(2, 5));
		model.addAttribute("list26", timetableService.findByGradeAndWeek(2, 6));
		model.addAttribute("list27", timetableService.findByGradeAndWeek(2, 7));
		
		
		model.addAttribute("list31", timetableService.findByGradeAndWeek(3, 1));
		model.addAttribute("list32", timetableService.findByGradeAndWeek(3, 2));
		model.addAttribute("list33", timetableService.findByGradeAndWeek(3, 3));
		model.addAttribute("list34", timetableService.findByGradeAndWeek(3, 4));
		model.addAttribute("list35", timetableService.findByGradeAndWeek(3, 5));
		model.addAttribute("list36", timetableService.findByGradeAndWeek(3, 6));
		model.addAttribute("list37", timetableService.findByGradeAndWeek(3, 7));
		
		model.addAttribute("list41", timetableService.findByGradeAndWeek(4, 1));
		model.addAttribute("list42", timetableService.findByGradeAndWeek(4, 2));
		model.addAttribute("list43", timetableService.findByGradeAndWeek(4, 3));
		model.addAttribute("list44", timetableService.findByGradeAndWeek(4, 4));
		model.addAttribute("list45", timetableService.findByGradeAndWeek(4, 5));
		model.addAttribute("list46", timetableService.findByGradeAndWeek(4, 6));
		model.addAttribute("list47", timetableService.findByGradeAndWeek(4, 7));
		
		
		model.addAttribute("list51", timetableService.findByGradeAndWeek(5, 1));
		model.addAttribute("list52", timetableService.findByGradeAndWeek(5, 2));
		model.addAttribute("list53", timetableService.findByGradeAndWeek(5, 3));
		model.addAttribute("list54", timetableService.findByGradeAndWeek(5, 4));
		model.addAttribute("list55", timetableService.findByGradeAndWeek(5, 5));
		model.addAttribute("list56", timetableService.findByGradeAndWeek(5, 6));
		model.addAttribute("list57", timetableService.findByGradeAndWeek(5, 7));
		
		return "admin/timetable/index";
	}
	@RequestMapping("doselect")
	public String doselect(Long id,HttpSession httpSession,Model model){
		User user=(User)httpSession.getAttribute("adminuser");
		Timetable timetable = timetableService.find(id);
		CategorySelect categorySelect = new CategorySelect();
		categorySelect.setCreateDate(new Date());
		categorySelect.setTimeTable(timetable);
		categorySelect.setUser(user);
		categorySelectService.save(categorySelect);
		
		
		model.addAttribute("teachers", teacherService.findAll());
		model.addAttribute("grades", gradeService.findAll());
		model.addAttribute("categorys", categoryService.findAll());
		model.addAttribute("list11", timetableService.findByGradeAndWeek(1, 1));
		model.addAttribute("list12", timetableService.findByGradeAndWeek(1, 2));
		model.addAttribute("list13", timetableService.findByGradeAndWeek(1, 3));
		model.addAttribute("list14", timetableService.findByGradeAndWeek(1, 4));
		model.addAttribute("list15", timetableService.findByGradeAndWeek(1, 5));
		model.addAttribute("list16", timetableService.findByGradeAndWeek(1, 6));
		model.addAttribute("list17", timetableService.findByGradeAndWeek(1, 7));
		
		
		model.addAttribute("list21", timetableService.findByGradeAndWeek(2, 1));
		model.addAttribute("list22", timetableService.findByGradeAndWeek(2, 2));
		model.addAttribute("list23", timetableService.findByGradeAndWeek(2, 3));
		model.addAttribute("list24", timetableService.findByGradeAndWeek(2, 4));
		model.addAttribute("list25", timetableService.findByGradeAndWeek(2, 5));
		model.addAttribute("list26", timetableService.findByGradeAndWeek(2, 6));
		model.addAttribute("list27", timetableService.findByGradeAndWeek(2, 7));
		
		
		model.addAttribute("list31", timetableService.findByGradeAndWeek(3, 1));
		model.addAttribute("list32", timetableService.findByGradeAndWeek(3, 2));
		model.addAttribute("list33", timetableService.findByGradeAndWeek(3, 3));
		model.addAttribute("list34", timetableService.findByGradeAndWeek(3, 4));
		model.addAttribute("list35", timetableService.findByGradeAndWeek(3, 5));
		model.addAttribute("list36", timetableService.findByGradeAndWeek(3, 6));
		model.addAttribute("list37", timetableService.findByGradeAndWeek(3, 7));
		
		model.addAttribute("list41", timetableService.findByGradeAndWeek(4, 1));
		model.addAttribute("list42", timetableService.findByGradeAndWeek(4, 2));
		model.addAttribute("list43", timetableService.findByGradeAndWeek(4, 3));
		model.addAttribute("list44", timetableService.findByGradeAndWeek(4, 4));
		model.addAttribute("list45", timetableService.findByGradeAndWeek(4, 5));
		model.addAttribute("list46", timetableService.findByGradeAndWeek(4, 6));
		model.addAttribute("list47", timetableService.findByGradeAndWeek(4, 7));
		
		
		model.addAttribute("list51", timetableService.findByGradeAndWeek(5, 1));
		model.addAttribute("list52", timetableService.findByGradeAndWeek(5, 2));
		model.addAttribute("list53", timetableService.findByGradeAndWeek(5, 3));
		model.addAttribute("list54", timetableService.findByGradeAndWeek(5, 4));
		model.addAttribute("list55", timetableService.findByGradeAndWeek(5, 5));
		model.addAttribute("list56", timetableService.findByGradeAndWeek(5, 6));
		model.addAttribute("list57", timetableService.findByGradeAndWeek(5, 7));
		model.addAttribute("tip",timetable.getCategory().getName()+"选课成功！");
		return "admin/timetable/userindex";

		
	}
	@RequestMapping("usercenterindex")
	public String usercenterindex(Model model,HttpSession httpSession) {
		User user=(User)httpSession.getAttribute("adminuser");
		model.addAttribute("list",this.categorySelectService.findByUser(user));
		return "admin/timetable/usercenterindex";
	}
	@RequestMapping("teacherindex")
	public String teacherindex(Model model,HttpSession httpSession) {
		Teacher teacher=(Teacher)httpSession.getAttribute("adminuser");
		model.addAttribute("list",this.timetableService.findByTeacher(teacher));
		return "admin/timetable/teacherindex";
	}
	@RequestMapping("userindex")
	public String userindex(Model model) {
		model.addAttribute("teachers", teacherService.findAll());
		model.addAttribute("grades", gradeService.findAll());
		model.addAttribute("categorys", categoryService.findAll());
		model.addAttribute("list11", timetableService.findByGradeAndWeek(1, 1));
		model.addAttribute("list12", timetableService.findByGradeAndWeek(1, 2));
		model.addAttribute("list13", timetableService.findByGradeAndWeek(1, 3));
		model.addAttribute("list14", timetableService.findByGradeAndWeek(1, 4));
		model.addAttribute("list15", timetableService.findByGradeAndWeek(1, 5));
		model.addAttribute("list16", timetableService.findByGradeAndWeek(1, 6));
		model.addAttribute("list17", timetableService.findByGradeAndWeek(1, 7));
		
		
		model.addAttribute("list21", timetableService.findByGradeAndWeek(2, 1));
		model.addAttribute("list22", timetableService.findByGradeAndWeek(2, 2));
		model.addAttribute("list23", timetableService.findByGradeAndWeek(2, 3));
		model.addAttribute("list24", timetableService.findByGradeAndWeek(2, 4));
		model.addAttribute("list25", timetableService.findByGradeAndWeek(2, 5));
		model.addAttribute("list26", timetableService.findByGradeAndWeek(2, 6));
		model.addAttribute("list27", timetableService.findByGradeAndWeek(2, 7));
		
		
		model.addAttribute("list31", timetableService.findByGradeAndWeek(3, 1));
		model.addAttribute("list32", timetableService.findByGradeAndWeek(3, 2));
		model.addAttribute("list33", timetableService.findByGradeAndWeek(3, 3));
		model.addAttribute("list34", timetableService.findByGradeAndWeek(3, 4));
		model.addAttribute("list35", timetableService.findByGradeAndWeek(3, 5));
		model.addAttribute("list36", timetableService.findByGradeAndWeek(3, 6));
		model.addAttribute("list37", timetableService.findByGradeAndWeek(3, 7));
		
		model.addAttribute("list41", timetableService.findByGradeAndWeek(4, 1));
		model.addAttribute("list42", timetableService.findByGradeAndWeek(4, 2));
		model.addAttribute("list43", timetableService.findByGradeAndWeek(4, 3));
		model.addAttribute("list44", timetableService.findByGradeAndWeek(4, 4));
		model.addAttribute("list45", timetableService.findByGradeAndWeek(4, 5));
		model.addAttribute("list46", timetableService.findByGradeAndWeek(4, 6));
		model.addAttribute("list47", timetableService.findByGradeAndWeek(4, 7));
		
		
		model.addAttribute("list51", timetableService.findByGradeAndWeek(5, 1));
		model.addAttribute("list52", timetableService.findByGradeAndWeek(5, 2));
		model.addAttribute("list53", timetableService.findByGradeAndWeek(5, 3));
		model.addAttribute("list54", timetableService.findByGradeAndWeek(5, 4));
		model.addAttribute("list55", timetableService.findByGradeAndWeek(5, 5));
		model.addAttribute("list56", timetableService.findByGradeAndWeek(5, 6));
		model.addAttribute("list57", timetableService.findByGradeAndWeek(5, 7));
		
		return "admin/timetable/userindex";
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> list(
			@RequestParam(value = "sEcho", defaultValue = "1") int sEcho,
			@RequestParam(value = "iDisplayStart", defaultValue = "0") int iDisplayStart,
			@RequestParam(value = "iDisplayLength", defaultValue = "10") int iDisplayLength,
			Long  gradeid
			) throws ParseException {
		int pageNumber = (int) (iDisplayStart / iDisplayLength) + 1;
		int pageSize = iDisplayLength;
		Page<Timetable> timetables = timetableService.findAll(pageNumber, pageSize, gradeid);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("aaData", timetables.getContent());
		map.put("iTotalRecords", timetables.getTotalElements());
		map.put("iTotalDisplayRecords", timetables.getTotalElements());
		map.put("sEcho", sEcho);
		return map;
	}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> save(Timetable timetable) {
		timetable.setCreateDate(new Date());
		timetableService.save(timetable);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("state", "success");
		map.put("msg", "保存成功");
		return map;
	}
	@RequestMapping(value = "/update")
	@ResponseBody
	public Map<String, Object> update(Timetable timetable) {
		timetableService.save(timetable);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("state", "success");
		map.put("msg", "保存成功");
		return map;
	}
	@RequestMapping(value = "/delete/{id}")
	@ResponseBody
	public Map<String, Object> delete(@PathVariable Long id) {
		Map<String, Object> map = new HashMap<String, Object>();
		try {
			timetableService.delete(id);
			map.put("state", "success");
			map.put("msg", "删除成功");
		} catch (Exception e) {
			map.put("state", "error");
			map.put("msg", "删除失败，外键约束");
		}
        return map;
	}

	@RequestMapping(value = "/get/{id}")
	@ResponseBody
	public Map<String, Object> get(@PathVariable Long id ) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("object", timetableService.find(id));
		map.put("state", "success");
		map.put("msg", "成功");
		return map;
	}
}
