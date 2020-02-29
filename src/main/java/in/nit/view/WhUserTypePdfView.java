package in.nit.view;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.lowagie.text.Document;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfWriter;

import in.nit.model.WhUserType;

public class WhUserTypePdfView extends AbstractPdfView {
	
	protected void buildPdfDocument(
			Map<String, Object> model,
			Document document,
			PdfWriter writer,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception 
		{
		response.addHeader("Content-Disposition", "attachment;filename=WhUserType.pdf");
		
		Paragraph p=new Paragraph("Welcome to WhUserType Pdf Page");
		document.add(p);
		
		@SuppressWarnings("unchecked")
		List<WhUserType> list=(List<WhUserType>) model.get("list");
		PdfPTable t=new PdfPTable(9);
		
		t.addCell("ID");
		t.addCell("TYPE");
		t.addCell("CODE");
		t.addCell("USERFOR");
		t.addCell("EMAIL");
		t.addCell("CONTACT");
		t.addCell("IDTYPE");
		t.addCell("OTHERID");
		t.addCell("IDNUMBER");
		
		for(WhUserType wh:list)
		{
			t.addCell(wh.getUserId().toString());
			t.addCell(wh.getUserType());
			t.addCell(wh.getUserCode());
			t.addCell(wh.getUserFor());
			t.addCell(wh.getUserMail());
			t.addCell(wh.getUserContact());
			t.addCell(wh.getUserIdType());
			t.addCell(wh.getOtherId());
			t.addCell(wh.getIdNumber());
		}

		document.add(t);
		document.add(new Paragraph(new Date().toString()));
	}
}