package com.csc.scheduler.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.csc.scheduler.data.Customer;



@Controller
@RequestMapping("/customers")
public class CustomerController {

	@RequestMapping (method=RequestMethod.GET)
	public String showCustomers(Model model){
		List<Customer> customerList  = new ArrayList<Customer>();
		Customer customer = new Customer();
		customer.setCustName("javier");
		customer.setId(1);
		
		Customer customer2 = new Customer();
		customer2.setId(2);
		customer2.setCustName("titi");
		
		customerList.add(customer);
		customerList.add(customer2);
		
		model.addAttribute("customerList", customerList);
		//model.addAttribute()
		return "customerList";
	}
	
	
	@RequestMapping (value="/edit", method=RequestMethod.GET)
	public String editCustomer( @RequestParam int id, Model model){
		Customer customer = new Customer();
		customer.setId(id);
		customer.setCustName("javier puente");
		customer.setDob(new Date());
		model.addAttribute("customer", customer);
		return "customerEdit";
	}
}
