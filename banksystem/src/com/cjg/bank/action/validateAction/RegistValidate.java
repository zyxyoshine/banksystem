package com.cjg.bank.action.validateAction;


import com.cjg.bank.domain.UserInfo;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class RegistValidate extends ActionSupport {
	private UserInfo userInfo;

	public UserInfo getUserInfo() {
		return userInfo;
	}

	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}

}
