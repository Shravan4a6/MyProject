package in.nit.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.nit.model.OrderMethod;
import in.nit.service.IOrderMethodService;
import in.nit.view.OrderMethodExcelView;
import in.nit.view.OrderMethodPdfView;

@Controller
@RequestMapping("/ordermethod")
public class OrderMethodController {

	@Autowired
	private IOrderMethodService service;

	@RequestMapping("/register")
	public String showReg(Model model) {

		model.addAttribute("orderMethod", new OrderMethod());
		return "OrderMethodRegister";

	}

	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveShipment(
			@ModelAttribute OrderMethod orderMethod,Model model)
	{
		Integer id=service.saveOrderMethod(orderMethod);
		String message="OrderMethod ' "+id+" 'saved";
		model.addAttribute("message", message);
		model.addAttribute("orderMethod", new OrderMethod());
		return "OrderMethodRegister";

	}

	@RequestMapping("/delete")
	public String deleteShipment(
			@RequestParam("oid")Integer id,Model model)
	{
		service.deleteOrderMethod(id);
		String message="OrderMethod '"+id+"' Deleted";
		model.addAttribute("message", message);
		List<OrderMethod> list=service.getAllOrderMethods();
		model.addAttribute("list", list);
		return "OrderMethodData";

	}

	@RequestMapping("/all")
	public String getAllOrderMethods(Model model)
	{
		List<OrderMethod> list=service.getAllOrderMethods();
		model.addAttribute("list", list);
		return "OrderMethodData";

	}

	@RequestMapping("/edit")
	public String showEditPage(
			@RequestParam("oid")Integer id,Model model)
	{
		OrderMethod om=service.getOneOrderMethod(id);

		model.addAttribute("orderMethod", om);

		return "OrderMethodEdit";

	}

	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateOrderMethod(
			@ModelAttribute OrderMethod orderMethod,Model model)
	{
		service.updateOrderMethod(orderMethod);
		String message="OrderMethod ' "+orderMethod.getOrderId()+" 'updated";
		model.addAttribute("message", message);

		List<OrderMethod> list=service.getAllOrderMethods();
		model.addAttribute("list", list);
		return "OrderMethodEdit";

	}

	@RequestMapping("/view")
	public String showOneOrderMethod(
			@RequestParam("oid")Integer id,Model model)
	{
		OrderMethod om=service.getOneOrderMethod(id);

		model.addAttribute("ob", om);

		return "OrderMethodView";

	}


	@RequestMapping("/excel")
	public ModelAndView showExcel(@RequestParam(value = "id",
	required =false)Integer id)
	{
		ModelAndView mav=new ModelAndView();
		mav.setView(new OrderMethodExcelView());
		if(id==null)
		{
			List<OrderMethod> list=service.getAllOrderMethods();
			mav.addObject("list", list);
		}
		else
		{
			OrderMethod om=service.getOneOrderMethod(id);
			mav.addObject("list", Arrays.asList(om));
		}
		return mav;
	}
	@RequestMapping("/pdf")
	public ModelAndView showPdf(@RequestParam(value = "id",
	required = false)Integer id)
	{
		ModelAndView mav=new ModelAndView();
		mav.setView(new OrderMethodPdfView());
		if(id==null)
		{
			List<OrderMethod> list=service.getAllOrderMethods();
			mav.addObject("list", list);
		}
		else
		{
			OrderMethod om=service.getOneOrderMethod(id);
			mav.addObject("list", Arrays.asList(om));
		}
		return mav;
	}

}
