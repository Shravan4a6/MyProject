package in.nit.dao;

import java.util.List;

import in.nit.model.Uom;

public interface IUomDao {

	Integer saveUom(Uom ob);
	void deleteUom(Integer id);
	
	List<Uom> getAllUoms();

	Uom getOneUom(Integer id);
	
	void updateUom(Uom ob);
	
	List<Object[]> getUomIdAndUomModel();
	
	
}
