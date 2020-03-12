package in.nit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import in.nit.model.PurchaseOrder;
import in.nit.model.PurchaseOrder;
import in.nit.service.IPurchaseOrderService;

@Controller
@RequestMapping("/po")
public class PurchaseOrderController {

	@Autowired
	private IPurchaseOrderService service;

	
	@RequestMapping("/register")
	public String showReg(@ModelAttribute PurchaseOrder purchaseOrder, Model model)
	{
		PurchaseOrder po=new PurchaseOrder();
		po.setStatus("OPEN");
		model.addAttribute("purchaseOrder", po);
		return "PurchaseOrderRegister";
	}
	
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveShipment(
			@ModelAttribute PurchaseOrder purchaseOrder,Model model)
	{
		Integer id=service.savePurchaseOrder(purchaseOrder);
		String message="PurchaseOrder ' "+id+" 'saved";
		model.addAttribute("message", message);
		
		PurchaseOrder po=new PurchaseOrder();
		po.setStatus("OPEN");
		
		model.addAttribute("purchaseOrder", po);
		return "PurchaseOrderRegister";

	}

	
}
