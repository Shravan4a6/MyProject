package in.nit.dao;

import java.util.List;

import in.nit.model.ShipmentType;

public interface IShipmentTypeDao {

	Integer saveShipmentType(ShipmentType ob);
	void deleteShipmentType(Integer id);
	
	List<ShipmentType> getAllShipmentTypes();
	
	ShipmentType getOneShipmentType(Integer id);
	
	void updateShipmentType(ShipmentType ob);

	
}
