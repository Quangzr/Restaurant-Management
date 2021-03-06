package jvb.dev.spring.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jvb.dev.spring.dao.ContactDAO;
import jvb.dev.spring.dao.DeliveryDAO;
import jvb.dev.spring.dao.FoodDAO;
import jvb.dev.spring.dao.UserDAO;
import jvb.dev.spring.model.Cart;
import jvb.dev.spring.model.Contact;
import jvb.dev.spring.model.Delivery;
import jvb.dev.spring.model.Food;
import jvb.dev.spring.model.User;

@Controller
public class UserController {

	private ApplicationContext context = new ClassPathXmlApplicationContext("Spring-Module.xml");
	private UserDAO userDAO = (UserDAO) context.getBean("userDAO");
	private ContactDAO contactDAO = (ContactDAO) context.getBean("contactDAO");
	private FoodDAO foodDAO = (FoodDAO) context.getBean("foodDAO");
	private DeliveryDAO deliveryDAO = (DeliveryDAO) context.getBean("deliveryDAO");

	private List<Food> addFoodMonle = new ArrayList<>();
	private List<Food> addFoodKhaivi = new ArrayList<>();
	private List<Delivery> listDeliveryaddress = new ArrayList<>();
	private Food addMonan = new Food();
	private User nowUser;
	private Delivery idaddress;

	private List<Food> listChoice = new ArrayList<>();

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String login(Model model, HttpSession session) {

		if (session.getAttribute("username") == null) {
			return "/login";
		}

		System.out.println("Login->id:" + session.getAttribute("id"));
		System.out.println("Login->Username:" + session.getAttribute("username"));

		return "/screen-home-page";
	}

	@RequestMapping(value = "/dologin", method = RequestMethod.POST)
	public String doLogin(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("Login_form") User Login_form, Model model, String name, String password,
			HttpSession session) throws IOException, SQLException {

		response.setContentType("text/html;charset=UTF-8");

		System.out.println("name: " + name);
		System.out.println("password: " + password);

		User user = userDAO.loginUser(name, password);

//		hi???n ra m??n h??nh c??c list food trong database
		addFoodMonle = foodDAO.getFoodMonle();
		model.addAttribute("addFoodMonle", addFoodMonle);

		addFoodKhaivi = foodDAO.getFoodKhaivi();
		model.addAttribute("addFoodKhaivi", addFoodKhaivi);

//		c???p nh???t user hi???n t???i v?? hi???n t??n ??? g??c ph???i m??n h??nh
		nowUser = user;
		model.addAttribute("nowname", nowUser.getname());

		if (user != null && user.getAdmin() == 0) {
			return "/screen-home-page";
		}
		if (user != null && user.getAdmin() == 1) {
			return "/admin";
		} else {
			return "/login";
		}
	}

//	n???u ????ng k?? th??nh c??ng th?? ra trang login
	@RequestMapping(value = "/doregister", method = RequestMethod.POST)
	public String doRegister(HttpServletRequest request, Model model, HttpServletResponse response,
			@ModelAttribute("registration_form") User user, BindingResult result) throws Exception {

		response.setContentType("text/html;charset=UTF-8");

		System.out.println("Register:" + user);
		if (result.hasErrors()) {
			System.out.println("Fail");
			List<ObjectError> errors = result.getAllErrors();
			for (ObjectError error : errors) {
				System.out.println(error.getDefaultMessage());
			}
			return "/register";
		}
		userDAO.registerUser(user);

		return "/login";
	}

//	???n n??t m??n ngon  
	@RequestMapping(value = "/monngon")
	public String clickMonngon(Model model) {

//		c???p nh???t user hi???n t???i v?? hi???n t??n ??? g??c ph???i m??n h??nh
		model.addAttribute("nowname", nowUser.getname());

		return "/chicken";
	}

//	???n v??o m??n ??n b???t k?? th?? ra trang chi ti???t v??? m??n ??n ????
	@RequestMapping(value = "/getMonan/{id}", method = RequestMethod.GET)
	public String clickmon3(HttpServletRequest request, Model model, HttpServletResponse response,
			@PathVariable("id") int id, HttpSession session) throws Exception {
		addMonan = foodDAO.getMonan(id);
		model.addAttribute("addMonan", addMonan);

//		c???p nh???t user hi???n t???i v?? hi???n t??n ??? g??c ph???i m??n h??nh
		model.addAttribute("nowname", nowUser.getname());

		return "/detailfood";
	}

//	???n v??o n??t ?????t m??n th?? th??m id c???a m??n ??n ???? v??o list choice
	@RequestMapping(value = "/foodChoice/{id}", method = RequestMethod.GET)
	public String clickdatmon(HttpServletRequest request, Model model, HttpServletResponse response,
			@PathVariable("id") int id, HttpSession session) throws Exception {
		
		listChoice = (List<Food>) foodDAO.getMonan(id);

		//	c???p nh???t user hi???n t???i v?? hi???n t??n ??? g??c ph???i m??n h??nh
		model.addAttribute("nowname", nowUser.getname());

		return "/detailfood";
	}

// 	???n v??o n??t Trang ch??? th?? ra trang ch???
	@RequestMapping(value = "/homepage")
	public String clickHome(Model model) {

		addFoodMonle = foodDAO.getFoodMonle();
		model.addAttribute("addFoodMonle", addFoodMonle);

		addFoodKhaivi = foodDAO.getFoodKhaivi();
		model.addAttribute("addFoodKhaivi", addFoodKhaivi);

		model.addAttribute("nowname", nowUser.getname());

		return "/screen-home-page";
	}

//	???n v??o bi???u t?????ng search th?? v??o trang search
	@RequestMapping(value = "/clicksearch")
	public String clickSearch(Model model) {
		model.addAttribute("nowname", nowUser.getname());

		return "/search";
	}

//	???n v??o n??t ????n h??ng th?? v??o trang ????n h??ng
	@RequestMapping(value = "/clickcart")
	public String clickCart(Model model) {
		model.addAttribute("nowname", nowUser.getname());

		model.addAttribute("listChoice", listChoice);
		
		return "/cart";
	}
	
//	???n v??o n??t ????ng k?? th?? v??o trang ????ng k??
	@RequestMapping(value = "/dangki")
	public String clickRegister() {
		return "/register";
	}

//	???n v??o n??t li??n h??? th?? v??o trang li??n h???
	@RequestMapping(value = "/contact")
	public String clickContact(Model model) {
		model.addAttribute("nowname", nowUser.getname());

		return "/contact";
	}

//	insert th??ng tin ???? ???????c ??i???n ??? form trong trang contact v??o database
	@RequestMapping(value = "/docontact", method = RequestMethod.POST)
	public String doContact(HttpServletRequest request, Model model, HttpServletResponse response,
			@ModelAttribute("contact_form") Contact contact, String name, String email, String address, String phone,
			String title, String content) throws Exception {

		response.setContentType("text/html;charset=UTF-8");

		System.out.println("Contact: " + contact);

		contactDAO.contactuser(contact);

		model.addAttribute("nowname", nowUser.getname());

		return "/contact";
	}

//	???n n??t thi???t l???p c?? nh??n th?? v??o trang userconfig
	@RequestMapping(value = "/userconfig")
	public String clickThietlapcanhan(Model model) {
		model.addAttribute("nowname", nowUser.getname());
		model.addAttribute("nownameform", nowUser.getname());
		model.addAttribute("nowemailform", nowUser.getEmail());
		model.addAttribute("nowphoneform", nowUser.getPhone());
		model.addAttribute("nowaddressform", nowUser.getAddress());

		return "/userconfigview";
	}

//	insert th??ng tin ???? ???????c ??i???n ??? form trong trang userconfig v??o database
	@RequestMapping(value = "/douserconfig", method = RequestMethod.POST)
	public String doConfiguser(HttpServletRequest request, Model model, HttpServletResponse response,
			@ModelAttribute("userconfig_form") User user, String name, String email, String phone, String address)
			throws Exception {

		response.setContentType("text/html;charset=UTF-8");

		System.out.println("Config: " + user);

//		th??ng tin user ???????c l???y t??? form, nowUser ????? l???y id 
		userDAO.configUser(user, nowUser);
		user.setId(nowUser.getId()); // l???y id c???a nowUser ????? cho v??o user
		nowUser = user; // c???p nh???t l???i nowUser

		model.addAttribute("nowname", nowUser.getname());

		return "redirect:/userconfig";
	}

//	???n n??t ?????a ch??? giao h??ng th?? v??o trang delivey address
	@RequestMapping(value = "/deliveryaddress", method = RequestMethod.GET)
	public String clickDiachigiaohang(HttpServletRequest request, HttpServletResponse response, Model model,
			HttpSession session) throws IOException, SQLException {
		model.addAttribute("nowname", nowUser.getname());

//      hi???n ra m??n h??nh list c??c ?????a ch??? giao h??ng
		listDeliveryaddress = deliveryDAO.getDeliveryaddress(nowUser.getId());
		model.addAttribute("listDeliveryaddress", listDeliveryaddress);

		return "/deliveryaddressview";
	}

//	insert th??ng tin ???? ???????c ??i???n ??? form trong trang deliveryaddress v??o database
	@RequestMapping(value = "/dodeliveryaddress", method = RequestMethod.POST)
	public String doDeliveryaddress(HttpServletRequest request, Model model, HttpServletResponse response,
			@ModelAttribute("deliveryaddress_form") Delivery deliveryaddress) throws Exception {

		model.addAttribute("nowname", nowUser.getname());

		response.setContentType("text/html;charset=UTF-8");

		System.out.println("Delivery Address: " + deliveryaddress);

		deliveryDAO.deliveryaddress(deliveryaddress, nowUser.getId());

		return "redirect:/deliveryaddress";
	}

//	update th??ng tin ?????a ch??? giao h??ng ???????c ??i???n ??? trong form 
	@RequestMapping(value = "/updatedeliveryaddress/{id}", method = RequestMethod.POST)
	public String updateDeliveryaddress(HttpServletRequest request, Model model, HttpServletResponse response,
			@ModelAttribute("updatedeliveryaddress_form") Delivery updatedeliveryaddress, @PathVariable("id") int id)
			throws Exception {

//		model.addAttribute("nowname", nowUser.getname());

		response.setContentType("text/html;charset=UTF-8");

		System.out.println("Delivery Address: " + updatedeliveryaddress);

		deliveryDAO.updateDeliveryaddress(updatedeliveryaddress, nowUser.getId(), id);
		deliveryDAO.getDeliveryaddressID(id);
		
		return "redirect:/deliveryaddress";
	}

//	x??a th??ng tin ?????a ch??? giao h??ng , id ph???i truy???n t??? b??n jsp 
	@RequestMapping(value = "/deletedeliveryaddress/{id}", method = RequestMethod.GET)
	public String doDelete(HttpServletRequest request, HttpServletResponse response, Model model,
			@ModelAttribute("deletedeliveryaddress_form") Delivery deletedelivery, HttpSession session,
			@PathVariable("id") int id) {

		deliveryDAO.deleteDeliveryaddress(deletedelivery, id);

		return "redirect:/deliveryaddress";
	}

}
