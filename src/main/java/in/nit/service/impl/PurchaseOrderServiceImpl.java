package in.nit.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.nit.dao.IPurchaseOrderDao;
import in.nit.model.PurchaseOrder;
import in.nit.service.IPurchaseOrderService;

@Service
public class PurchaseOrderServiceImpl implements IPurchaseOrderService {


	@Autowired
	private IPurchaseOrderDao dao;
	
	@Transactional
	public Integer savePurchaseOrder(PurchaseOrder pob) {

		return dao.savePurchaseOrder(pob);
	}

}
