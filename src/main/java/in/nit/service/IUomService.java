package in.nit.service;

import java.util.List;

import in.nit.model.Uom;

public interface IUomService {

	Integer saveUom(Uom ob);
	void deleteUom(Integer id);

	List<Uom> getAllUoms();

	Uom getOneUom(Integer id);

	void updateUom(Uom ob);

	List<Object[]> getUomIdAndUomModel();

}
