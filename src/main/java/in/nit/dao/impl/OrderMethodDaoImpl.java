package in.nit.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import in.nit.dao.IOrderMethodDao;
import in.nit.model.OrderMethod;

@Repository
public class OrderMethodDaoImpl implements IOrderMethodDao {


	@Autowired
	private HibernateTemplate ht;

	public Integer saveOrderMethod(OrderMethod ob) {

		return (Integer) ht.save(ob);
	}	

	
	public void deleteOrderMethod(Integer id) {
	
		/*
		 * OrderMethod st=new OrderMethod(); st.setShipId(id); ht.delete(st);
		 */	
		ht.delete(new OrderMethod(id));
		
	}
	public List<OrderMethod> getAllOrderMethods() {

		return ht.loadAll(OrderMethod.class);
	}
	
	
	public OrderMethod getOneOrderMethod(Integer id) {
	
		return ht.get(OrderMethod.class, id);
	}
	
	
	public void updateOrderMethod(OrderMethod ob) {
		ht.update(ob);
		
	}
}
