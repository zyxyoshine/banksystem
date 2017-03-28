package com.cjg.bank.action.validateAction;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class MoneyValidate extends ActionSupport{
	private int money;

	public int getMoney() {
		return money;
	}

	public void setMoney(int money) {
		System.out.println(money);
		this.money = money;
	}
	
}
