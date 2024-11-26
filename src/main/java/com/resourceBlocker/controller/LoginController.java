package com.resourceBlocker.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.resourceBlocker.model.User;
import com.resourceBlocker.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;
    
    @Autowired
    HttpSession session;
    
    @GetMapping("/")
    public ModelAndView login(ModelAndView mv) {
    	mv=new ModelAndView("login");
        return mv;
    }

    @PostMapping("/login")
    public String login(@RequestParam String username, @RequestParam String password, Model model) {
        User user = userService.findByUsername(username);
        if(username==""&&password=="") {
        	 model.addAttribute("Uerror", "User name is empty");
        	 model.addAttribute("Perror", "Password is empty");
             return "login";
        }else if(username=="") {
        	model.addAttribute("Uerror", "User name is empty");
            return "login";
        }
        else if(password=="") {
        	 model.addAttribute("Perror", "Password is empty");
             return "login";
        }
        else {
        	if(password.length()>=8) {
        	if (user != null && user.getPassword().equals(password)) {
                session.setAttribute("user", user);
                return "redirect:/welcome";
            }else {
                model.addAttribute("error", "Invalid username or password");
                return "login";
            }
        	}else {
        		model.addAttribute("Perror", "Password must be 8 or more characters");
                return "login";
        	}
        }
    }

    @GetMapping("/welcome")
    public String welcome(Model model) {
        User user = (User) session.getAttribute("user");
        if (user != null) {
            model.addAttribute("username", user.getUsername());
            return "welcome";
        } else {
            return "redirect:/";
        }
    }

    @GetMapping("/updatepassword")
    public ModelAndView updatePassword(ModelAndView mv) {
    	
        User user = (User) session.getAttribute("user");
        if (user != null) {
            mv=new ModelAndView("updatepassword");
            return mv;
        } else {
        	mv=new ModelAndView("redirect:/");
            return mv;
        }
        
    }

    @PostMapping("/updatepassword")
    public String updatePassword(HttpSession session, @RequestParam String oldPassword, @RequestParam String newPassword, @RequestParam String confirmPassword, Model model) {
        User user = (User) session.getAttribute("user");
        if (user != null && user.getPassword().equals(oldPassword)) {
            if (newPassword.equals(confirmPassword)) {
            	if(newPassword.length()>=8) {
            	if(!oldPassword.equals(newPassword)) {
	                user.setPassword(newPassword);
	                userService.save(user);
	                model.addAttribute("message", "Password updated successfully, please login again");
	                return "updatepassword";
            	}
            	else {
            		model.addAttribute("error", "Old password and New password must be different");
            		return "updatepassword";
            	}
              }else {
            	  model.addAttribute("error", "New Password must be minimum of 8 characters");
          		  return "updatepassword";
              }
            } else {
                model.addAttribute("error", "New password and confirm password do not match");
                return "updatepassword";
            }
        } else {
            model.addAttribute("error", "Invalid password");
            return "updatepassword";
        }
    }


    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}

