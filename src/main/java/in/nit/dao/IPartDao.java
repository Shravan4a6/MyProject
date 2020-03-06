package in.nit.dao;

import java.util.List;

import in.nit.model.Part;

public interface IPartDao {

	Integer savePart(Part ob);
	void deletePart(Integer id);
	
	List<Part> getAllParts();

	Part getOnePart(Integer id);
	
	void updatePart(Part ob);

	
}
