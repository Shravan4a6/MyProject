package in.nit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="whusertab")
public class WhUserType {

	@Id
	@GeneratedValue
	private Integer userId;
	private String userType;
	private String userCode;
	private String userFor;
	private String userMail;
	private String userContact;
	private String userIdType;
	private String otherId;
	private String idNumber;
	public WhUserType() {
		super();
	}
	
	
	public WhUserType(Integer userId) {
		super();
		this.userId = userId;
	}


	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserFor() {
		return userFor;
	}
	public void setUserFor(String userFor) {
		this.userFor = userFor;
	}
	public String getUserMail() {
		return userMail;
	}
	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}
	public String getUserContact() {
		return userContact;
	}
	public void setUserContact(String userContact) {
		this.userContact = userContact;
	}
	public String getUserIdType() {
		return userIdType;
	}
	public void setUserIdType(String userIdType) {
		this.userIdType = userIdType;
	}
	public String getOtherId() {
		return otherId;
	}
	public void setOtherId(String otherId) {
		this.otherId = otherId;
	}
	public String getIdNumber() {
		return idNumber;
	}
	public void setIdNumber(String idNumber) {
		this.idNumber = idNumber;
	}
	@Override
	public String toString() {
		return "WhUserType [userId=" + userId + ", userType=" + userType + ", userCode=" + userCode + ", userFor="
				+ userFor + ", userMail=" + userMail + ", userContact=" + userContact + ", userIdType=" + userIdType
				+ ", otherId=" + otherId + ", idNumber=" + idNumber + "]";
	}
	
	
	
}
