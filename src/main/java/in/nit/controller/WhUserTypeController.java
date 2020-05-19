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

import in.nit.model.WhUserType;
import in.nit.service.IWhUserTypeService;
import in.nit.util.EmailUtil;
import in.nit.view.WhUserTypeExcelView;
import in.nit.view.WhUserTypePdfView;

@Controller
@RequestMapping("/whuser")
public class WhUserTypeController {

	@Autowired
	private IWhUserTypeService service;
	
	@Autowired
	private EmailUtil emailUtil;

	@RequestMapping("/register")
	public String showReg(Model model)
	{
		model.addAttribute("whUserType", new WhUserType());
		return "WhUserTypeRegister";
	}

	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String saveWhUser(@ModelAttribute WhUserType whUserType,Model model)
	{
		Integer id=service.saveWhUserType(whUserType);
		String message="WhUser '"+id+"'Saved";
		
		if(id!=null) {
			//send Email
			String text="Welcome to WhUser ="+whUserType.getUserCode()
			+",type="+whUserType.getUserType()
			+",All the Best";
			
			boolean sent=emailUtil.sendEmail(whUserType.getUserMail(),"Welcome WhUser",text );
			
			if(sent)
				message+=",Email Also Sent";
			else
				message+=",Email Sending Failed";
			
		}
		
		model.addAttribute("message", message);
		model.addAttribute("whUserType", new WhUserType());
		return "WhUserTypeRegister";

	}

	@RequestMapping("/all")
	public String showAllWhUsers(Model model) {
		List<WhUserType> list=service.getAllWhUserTypes();
		model.addAttribute("list", list);
		return "WhUserTypeData";

	}

	@RequestMapping("/delete")
	public String deleteWhUserType(
			@RequestParam("wid")Integer id,Model model)
	{
		service.deleteWhUserType(id);
		String message="WhUserType '"+id+"' Deleted";
		model.addAttribute("message", message);
		List<WhUserType> list=service.getAllWhUserTypes();
		model.addAttribute("list", list);
		return "WhUserTypeData";
	}

	@RequestMapping("/edit")
	public String showEditPage(
			@RequestParam("wid")Integer id,Model model)
	{
		WhUserType wh=service.getOneWhUserType(id);

		model.addAttribute("whUserType", wh);

		return "WhUserTypeEdit";

	}

	@RequestMapping(value="/update",method=RequestMethod.POST)
	public String updateWhUserType(
			@ModelAttribute WhUserType whUserType,Model model)
	{
		service.updateWhUserType(whUserType);
		String message="WhUserType ' "+whUserType.getUserId()+" 'updated";
		model.addAttribute("message", message);

		List<WhUserType> list=service.getAllWhUserTypes();
		model.addAttribute("list", list);
		return "WhUserTypeEdit";

	}

	@RequestMapping("/view")
	public String showOneWhUserType(
			@RequestParam("wid")Integer id,Model model)
	{
		WhUserType wh=service.getOneWhUserType(id);

		model.addAttribute("ob", wh);

		return "WhUserTypeView";

	}

	@RequestMapping("/excel")
	public ModelAndView showExcel(@RequestParam(value = "id",
	required =false)Integer id)
	{
		ModelAndView mav=new ModelAndView();
		mav.setView(new WhUserTypeExcelView());
		if(id==null)
		{
			List<WhUserType> list=service.getAllWhUserTypes();
			mav.addObject("list", list);
		}
		else
		{
			WhUserType wh=service.getOneWhUserType(id);
			mav.addObject("list", Arrays.asList(wh));
		}
		return mav;
	}
	@RequestMapping("/pdf")
	public ModelAndView showPdf(@RequestParam(value = "id",
	required = false)Integer id)
	{
		ModelAndView mav=new ModelAndView();
		mav.setView(new WhUserTypePdfView());
		if(id==null)
		{
			List<WhUserType> list=service.getAllWhUserTypes();
			mav.addObject("list", list);
		}
		else
		{
			WhUserType wh=service.getOneWhUserType(id);
			mav.addObject("list", Arrays.asList(wh));
		}
		return mav;
	}

}
