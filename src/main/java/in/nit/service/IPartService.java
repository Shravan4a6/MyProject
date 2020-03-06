package in.nit.service;

import java.util.List;

import in.nit.model.Part;

public interface IPartService {

	Integer savePart(Part ob);
	void deletePart(Integer id);

	List<Part> getAllParts();

	Part getOnePart(Integer id);

	void updatePart(Part ob);
}
