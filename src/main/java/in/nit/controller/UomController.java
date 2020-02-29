package in.nit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.nit.model.Uom;
import in.nit.service.IUomService;
import in.nit.view.UomExcelView;
import in.nit.view.UomPdfView;



@Controller
@RequestMapping("/uom")
public class UomController {

	@Autowired
	private IUomService service;

	@RequestMapping("/register")
	public String showReg(Model model ) {

		model.addAttribute("uom", new Uom());
		return "UomRegister";

	}	

	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveUom(
			@ModelAttribute Uom uom,Model model)
	{
		Integer id=service.saveUom(uom);
		String message="Uom ' "+id+" 'saved";
		model.addAttribute("message", message);
		model.addAttribute("uom", new Uom());
		return "UomRegister";
	}

	@RequestMapping("/all")
	public String getAllUoms(Model model)
	{
		List<Uom> list=service.getAllUoms();
		model.addAttribute("list", list);
		return "UomData";
	}


	@RequestMapping("/delete")
	public String deleteUom(
			@RequestParam("uid")Integer id,Model model)
	{
		service.deleteUom(id);
		String message="Uom '"+id+"' Deleted";
		model.addAttribute("message", message);
		List<Uom> list=service.getAllUoms();
		model.addAttribute("list", list);
		return "UomData";
	}

	@RequestMapping("/edit")
	public String showEditPage(
			@RequestParam("uid")Integer id,Model model)
	{
		Uom um=service.getOneUom(id);

		model.addAttribute("uom", um);

		return "UomEdit";

	}

	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateUom(
			@ModelAttribute Uom uom,Model model)
	{
		service.updateUom(uom);
		String message="Uom ' "+uom.getUomId()+" 'updated";
		model.addAttribute("message", message);

		List<Uom> list=service.getAllUoms();
		model.addAttribute("list", list);
		return "UomEdit";

	}

	@RequestMapping("/view")
	public String showOneUom(
			@RequestParam("uid")Integer id,Model model)
	{
		Uom um=service.getOneUom(id);

		model.addAttribute("ob", um);

		return "UomView";

	}

	@RequestMapping("/excel")
	public ModelAndView showExcel()
	{
		ModelAndView mav=new ModelAndView();

		mav.setView(new UomExcelView());
		List<Uom> list=service.getAllUoms();
		mav.addObject("list", list);
		return mav;

	}

	@RequestMapping("/pdf")
	public ModelAndView showPdf()
	{
		ModelAndView mav=new ModelAndView();
		mav.setView(new UomPdfView());
		List<Uom> list=service.getAllUoms();
		mav.addObject("list", list);
		return mav;
	}
}
