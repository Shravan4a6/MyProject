package in.nit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import in.nit.model.PurchaseOrder;
import in.nit.service.IPurchaseOrderService;
import in.nit.service.IShipmentTypeService;
import in.nit.service.IWhUserTypeService;
import in.nit.util.CommonUtil;

@Controller
@RequestMapping("/po")
public class PurchaseOrderController {

	@Autowired
	private IPurchaseOrderService service;

	@Autowired
	private IShipmentTypeService shipmentService;
	
	@Autowired
	private IWhUserTypeService whUserTypeService;

	
	private void commonUi(Model model) {

		List<Object[]> shipList=shipmentService.getShipmentIdAndCode();
		Map<Integer,String> shipMap=CommonUtil.convert(shipList);

		model.addAttribute("shipMap", shipMap);

			
		List<Object[]> whVenList=whUserTypeService.getWhUserIdAndCode("VENDOR");
		Map<Integer,String> whVenMap=CommonUtil.convert(whVenList);

		model.addAttribute("whVenMap", whVenMap);

		
	}




	@RequestMapping("/register")
	public String showReg(@ModelAttribute PurchaseOrder purchaseOrder, Model model)
	{
		PurchaseOrder po=new PurchaseOrder();
		po.setStatus("OPEN");
	
		commonUi(model);
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
