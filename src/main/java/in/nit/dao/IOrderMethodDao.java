package in.nit.dao;

import java.util.List;

import in.nit.model.OrderMethod;

public interface IOrderMethodDao {

	Integer saveOrderMethod(OrderMethod ob);
	void deleteOrderMethod(Integer id);
	
	List<OrderMethod> getAllOrderMethods();
	
	OrderMethod getOneOrderMethod(Integer id);
	
	void updateOrderMethod(OrderMethod ob);
	
}
