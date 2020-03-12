package in.nit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="purchasetab")
public class PurchaseOrder {

	@Id
	@GeneratedValue
	private Integer purchaseId;
	private String orderCode;
	private String refNumber;
	private String qltyCheck;
	private String status;
	private String note;
	public PurchaseOrder() {
		super();
	}
	public PurchaseOrder(Integer purchaseId) {
		super();
		this.purchaseId = purchaseId;
	}
	public Integer getPurchaseId() {
		return purchaseId;
	}
	public void setPurchaseId(Integer purchaseId) {
		this.purchaseId = purchaseId;
	}
	public String getOrderCode() {
		return orderCode;
	}
	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}
	public String getRefNumber() {
		return refNumber;
	}
	public void setRefNumber(String refNumber) {
		this.refNumber = refNumber;
	}
	public String getQltyCheck() {
		return qltyCheck;
	}
	public void setQltyCheck(String qltyCheck) {
		this.qltyCheck = qltyCheck;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "PurchaseOrder [purchaseId=" + purchaseId + ", orderCode=" + orderCode + ", refNumber=" + refNumber
				+ ", qltyCheck=" + qltyCheck + ", status=" + status + ", note=" + note + "]";
	}
	
	
	
}
