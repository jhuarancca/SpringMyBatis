package in.jhuarancca.springmybatis.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.jhuarancca.springmybatis.dao.EmployeeMapper;
import in.jhuarancca.springmybatis.entity.Employee;

@Controller
public class EmployeeController {
	
	@Autowired
	EmployeeMapper mapper;
	
	@RequestMapping("/")
	public ModelAndView index() {
		//System.out.println(mapper.getAllEmployees());
		ModelAndView mav=new ModelAndView("list-employees");
		mav.addObject("listemployees",mapper.getAllEmployees());
		return mav;
		//return "list-employees";
	}
	
	@RequestMapping("/showFormForAddEmployee")
	public ModelAndView showForm() {
		ModelAndView mav=new ModelAndView("add-employee");
		mav.addObject("employee",new Employee());
		
		return mav; 
		
	}
	@RequestMapping("/saveProcess")
	public String saveProcess(@ModelAttribute("employee") Employee employee) {
		if(employee.getId() == null) {
			//save employee
			mapper.saveEmployee(employee);
		}else {
			//update employee
			mapper.updateEmployee(employee);
		}
		
		return "redirect:/";
		
	}
	@RequestMapping("/deleteEmployee")
	public String deleteEmployee(@RequestParam("employeeId") int employeeId) {
		//System.out.println("Employee ID"+employeeId);
		mapper.deleteEmployee(employeeId);
		return "redirect:/";
	}	
	@RequestMapping("/editEmployee")
	public ModelAndView editEmployee(@RequestParam("employeeId") int employeeId) {
		ModelAndView mav=new ModelAndView("add-employee");
		Employee employee = mapper.findById(employeeId);
		mav.addObject("employee",employee);
		return mav;
	}	
	
	
}
