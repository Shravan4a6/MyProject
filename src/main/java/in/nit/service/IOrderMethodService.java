package in.nit.service;

import java.util.List;

import in.nit.model.OrderMethod;

public interface IOrderMethodService {

	Integer saveOrderMethod(OrderMethod ob);
	void deleteOrderMethod(Integer id);
	
	List<OrderMethod> getAllOrderMethods();
	
	OrderMethod getOneOrderMethod(Integer id);
	
	void updateOrderMethod(OrderMethod ob);
	
	public List<Object[]> getOrderIdAndCode(String mode);
}
