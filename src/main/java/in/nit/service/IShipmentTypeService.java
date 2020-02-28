package in.nit.service;

import java.util.List;

import in.nit.model.ShipmentType;

public interface IShipmentTypeService {

	Integer saveShipmentType(ShipmentType ob);
	void deleteShipmentType(Integer id);
	
	List<ShipmentType> getAllShipmentTypes();

	ShipmentType getOneShipmentType(Integer id);
	
	void updateShipmentType(ShipmentType ob);
	
	
}
