package org.drutko.controller;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.drutko.domain.Food;
import org.drutko.service.CartService;
import org.drutko.service.FoodService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles order request
 * 
 * @author Lena
 */
@Controller
@RequestMapping("/main")
public class MainController {

	protected static Logger logger = Logger.getLogger("controller");

	@Resource(name = "cartService")
	private CartService cartService;

	@Resource(name = "foodService")
	private FoodService foodService;

	@RequestMapping(value = { "/", "/index" })
	public String init(Model model) {
		logger.debug("Home");
		return "/index";
	}

	/**
	 * @param model
	 * @return
	 */
	// @RequestMapping(value = "/index", method = RequestMethod.GET)
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String getRecords(Model model) {
		logger.debug("Received request to show records page");
		List<Food> foods = foodService.getAll();
		
		if (foods != null ){
			logger.debug("not null");
		}
		for (Food f : foods) {
			logger.debug(f);
		}
		// Add to model
		model.addAttribute("foods", foods);
		// This will resolve to /WEB-INF/jsp/records.jsp
		return "/menu";
	}

	@RequestMapping(value = "/contact")
	public String getContact(Model model) {
		logger.debug("Contact");
		return "/contact";
	}
	/**
	 * Retrieves the "Add New Record" page
	 */
	// @RequestMapping(value = "/add", method = RequestMethod.GET)
	// public String getAdd(Model model) {
	// logger.debug("Received request to show add page");
	//
	// // Create new Person and add to model
	// model.addAttribute("personAttribute", new Person());
	//
	// // This will resolve to /WEB-INF/jsp/add-record.jsp
	// return "add-record";
	// }
	//
	// /**
	// * Adds a new record
	// */
	// @RequestMapping(value = "/add", method = RequestMethod.POST)
	// public String postAdd(@ModelAttribute("personAttribute") Person person) {
	// logger.debug("Received request to add new record");
	//
	// // Delegate to service
	// personService.add(person);
	//
	// // Redirect to url
	// return "redirect:/krams/main/record/list";
	// }

}
