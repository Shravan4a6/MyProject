package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IShipmentTypeDao;
import in.nit.model.ShipmentType;

@Repository
public class ShipmentTypeDaoImpl implements IShipmentTypeDao {


	@Autowired
	private HibernateTemplate ht;

	public Integer saveShipmentType(ShipmentType ob) {

		return (Integer) ht.save(ob);
	}	

	
	public void deleteShipmentType(Integer id) {
	
		/*
		 * ShipmentType st=new ShipmentType(); st.setShipId(id); ht.delete(st);
		 */	
		ht.delete(new ShipmentType(id));
		
	}
	public List<ShipmentType> getAllShipmentTypes() {

		return ht.loadAll(ShipmentType.class);
	}
	
	
	public ShipmentType getOneShipmentType(Integer id) {
	
		return ht.get(ShipmentType.class, id);
	}
	
	
	public void updateShipmentType(ShipmentType ob) {
		ht.update(ob);
		
	}

	
	@SuppressWarnings({ "deprecation", "unchecked" })
	public List<Object[]> getShipmentModeCount() {
		
		String hql=" select shipMode,count(shipMode) "
				+ " from in.nit.model.ShipmentType "
				+ " group by shipMode ";
		return (List<Object[]>) ht.find(hql);
	}

	
	public List<Object[]> getShipmentIdAndCode() {
	
		String hql=" select shipId,shipCode from "+ShipmentType.class.getName()+" where enbShip='YES' ";
		@SuppressWarnings({ "deprecation", "unchecked" })
		List<Object[]> list=(List<Object[]>) ht.find(hql);
		
		
		return list;
	}
	
}
