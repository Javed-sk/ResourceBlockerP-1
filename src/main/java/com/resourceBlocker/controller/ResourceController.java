package com.resourceBlocker.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.resourceBlocker.model.Resource;
import com.resourceBlocker.model.User;
import com.resourceBlocker.service.ResourceService;
import jakarta.servlet.http.HttpSession;

@RestController
public class ResourceController {

	@Autowired
	ResourceService resourceService;
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/ResourceOperations")
	public ModelAndView ResourcePage(ModelAndView mv) {
		mv=new ModelAndView("Resource");
		return mv;
	}
	
	@RequestMapping("/addResource")
	public ModelAndView addResourcePage(ModelAndView mv) {
		mv=new ModelAndView("AddResource");
		mv.addObject("resource", new Resource());
		return mv;
	}
	@PostMapping("/addResource")
	public ModelAndView addResource(Resource resource){
		ModelAndView mv = new ModelAndView("AddResource");
		resourceService.upsert(resource);
		mv.addObject("message","Resource Added");
		return mv;
	}

	@GetMapping("/resources")
	public ModelAndView getAllCategories(){
		
		 User user = (User) session.getAttribute("user");
	        if (user != null) {
	        ModelAndView mv=new ModelAndView("AllResource");
	    		List<Resource> allResource = resourceService.getAll();
	    		mv.addObject("resources", allResource);
	            return mv;
	        } else {
	        	ModelAndView mv=new ModelAndView("redirect:/");
	            return mv;
	        }
		
	}
	@GetMapping("/resource/{rid}")
	public ModelAndView deleteResource(@PathVariable Integer rid){
		ModelAndView mv = new ModelAndView("redirect:/resources");
		resourceService.deleteById(rid);
		return mv;	
	}
	

 
	@GetMapping("/updateResource/{rid}")
	public ModelAndView updateResourcePage(@PathVariable Integer rid) {
		User user = (User) session.getAttribute("user");
		if(user!= null) {
	    Resource res = resourceService.getById(rid);
        ModelAndView mv = new ModelAndView("UpdateResource");
     	mv.addObject("resource", res);
     	return mv;     
		}else {
			ModelAndView mv=new ModelAndView("redirect:/");
            return mv;
		}
	}
	
	
	@PostMapping("/updateResource")
	public ModelAndView updateResourcePage(Resource resource) {

		Resource res = resourceService.getById(resource.getrId());
		if(res!=null) {
		ModelAndView mv = new ModelAndView("AllResource");
		resourceService.upsert(resource);
		List<Resource> allResource = resourceService.getAll();
		mv.addObject("resources", allResource);
		return mv;
		}
		else {
			ModelAndView mv = new ModelAndView("UpdateResource");
			mv.addObject("error","Resource Not Found");
			return mv;

		}
	}
	

}



