package in.nit.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.nit.model.Part;
import in.nit.service.IOrderMethodService;
import in.nit.service.IPartService;
import in.nit.service.IUomService;
import in.nit.util.CommonUtil;



@Controller
@RequestMapping("/part")
public class PartController {

	@Autowired
	private IPartService service;


	@Autowired
	private IUomService uomService;
	
	@Autowired
	private IOrderMethodService orderMethodService;
	
	private void commonUi(Model model) {
		
		List<Object[]> uomList=uomService.getUomIdAndUomModel();
		Map<Integer,String> uomMap=CommonUtil.convert(uomList);
		
		model.addAttribute("uomMap", uomMap);
		
		List<Object[]> omSaleList=orderMethodService.getOrderIdAndCode("SALE");
		Map<Integer,String> omSaleMap=CommonUtil.convert(omSaleList);
		
		model.addAttribute("omSaleMap", omSaleMap);
		
		List<Object[]> omPurchaseList=orderMethodService.getOrderIdAndCode("PURCHASE");
		Map<Integer,String> omPurchaseMap=CommonUtil.convert(omPurchaseList);
		
		model.addAttribute("omPurchaseMap", omPurchaseMap);
		
	}

	
	@RequestMapping("/register")
	public String showReg(Model model ) {

		model.addAttribute("part", new Part());
		
		commonUi(model);
		return "PartRegister";

	}	

	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String savePart(
			@ModelAttribute Part part,Model model)
	{
		Integer id=service.savePart(part);
		String message="Part ' "+id+" 'saved";
		model.addAttribute("message", message);
		model.addAttribute("part", new Part());
		
		commonUi(model);
		return "PartRegister";
	}

	@RequestMapping("/all")
	public String getAllParts(Model model)
	{
		List<Part> list=service.getAllParts();
		model.addAttribute("list", list);
		return "PartData";
	}


	@RequestMapping("/delete")
	public String deletePart(
			@RequestParam("pid")Integer id,Model model)
	{
		service.deletePart(id);
		String message="Part '"+id+"' Deleted";
		model.addAttribute("message", message);
		List<Part> list=service.getAllParts();
		model.addAttribute("list", list);
		return "PartData";
	}

	@RequestMapping("/edit")
	public String showEditPage(
			@RequestParam("pid")Integer id,Model model)
	{
		Part p=service.getOnePart(id);

		model.addAttribute("part", p);
		
		commonUi(model);
		return "PartEdit";

	}

	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updatePart(
			@ModelAttribute Part part,Model model)
	{
		service.updatePart(part);
		String message="Part ' "+part.getPartId()+" 'updated";
		model.addAttribute("message", message);

		List<Part> list=service.getAllParts();
		model.addAttribute("list", list);
		commonUi(model);
		return "PartEdit";

	}

	@RequestMapping("/view")
	public String showOnePart(
			@RequestParam("pid")Integer id,Model model)
	{
		Part p=service.getOnePart(id);

		model.addAttribute("ob", p);

		return "PartView";

	}

	/*
	 * @RequestMapping("/excel") public ModelAndView showExcel(@RequestParam(value =
	 * "id", required =false)Integer id) { ModelAndView mav=new ModelAndView();
	 * mav.setView(new PartExcelView()); if(id==null) { List<Part>
	 * list=service.getAllParts(); mav.addObject("list", list); } else { Part
	 * um=service.getOnePart(id); mav.addObject("list", Arrays.asList(um)); } return
	 * mav; }
	 * 
	 * @RequestMapping("/pdf") public ModelAndView showPdf(@RequestParam(value =
	 * "id", required = false)Integer id) { ModelAndView mav=new ModelAndView();
	 * mav.setView(new PartPdfView()); if(id==null) { List<Part>
	 * list=service.getAllParts(); mav.addObject("list", list); } else { Part
	 * um=service.getOnePart(id); mav.addObject("list", Arrays.asList(um)); } return
	 * mav; }
	 */

	
	
	
	
	
}