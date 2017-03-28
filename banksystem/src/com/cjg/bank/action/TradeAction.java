package com.cjg.bank.action;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.cjg.bank.domain.TradeInfo;
import com.cjg.bank.domain.UserInfo;
import com.cjg.bank.service.TradeFacade;
import com.cjg.bank.service.TradeFacadeImpl;

public class TradeAction {

	private TradeFacade tradeFacade;

	TradeInfo tradeInfo;

	private Integer money;

	private String tradeType;

	private Integer balance;

	private List<TradeInfo> list;

	public TradeAction() {
		tradeFacade = new TradeFacadeImpl();
		tradeInfo = new TradeInfo();
	}

	public Integer getBalance() {
		return balance;
	}

	public void setBalance(Integer balance) {
		this.balance = balance;
	}

	public List<TradeInfo> getList() {
		return list;
	}

	public void setList(List<TradeInfo> list) {
		this.list = list;
	}

	public Integer getMoney() {
		return money;
	}

	public void setMoney(Integer money) {
		this.money = money;
	}

	public String getTradeType() {
		return tradeType;
	}

	public void setTradeType(String tradeType) {
		this.tradeType = tradeType;
	}

	public String fetchMoney() throws SQLException {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String userNO = (String) (((UserInfo) session.getAttribute("user")).getUserNO());
		String tt = getTradeType();
		Integer balance = tradeFacade.selectBalance(userNO);
		tradeInfo.setUserNO(userNO);
		tradeInfo.setTrade(tt);
		tradeInfo.setBalance(balance);
		tradeInfo.setMoney(money);

		// ���ȡ��������ʻ��������ʾ����
		if (tradeInfo.getMoney() > balance.intValue()) {
			return "fetchError";
		} else {
			tradeFacade.fetchMoney(tradeInfo);
			return "fetchSuccess";
		}
	}

	public String saveMoney() throws SQLException {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String userNO = (String) (((UserInfo) session.getAttribute("user")).getUserNO());
		String tt = getTradeType();
		Integer balance = tradeFacade.selectBalance(userNO);
		tradeInfo.setUserNO(userNO);
		tradeInfo.setTrade(tt);
		tradeInfo.setBalance(balance);
		tradeInfo.setMoney(money);
		tradeFacade.saveMoney(tradeInfo);
		return "saveSuccess";
	}

	public String selectBalance() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String userNO = (String) (((UserInfo) session.getAttribute("user")).getUserNO());
		try {
			Integer balance = tradeFacade.selectBalance(userNO);
			setBalance(balance);
		} catch (SQLException e) {
			e.printStackTrace();
			return "Error";
		}
		return "selectBalance";
	}

	@SuppressWarnings("unchecked")
	public String tradeInfo() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		String userNO = (String) (((UserInfo) session.getAttribute("user")).getUserNO());
		try {
			List list = tradeFacade.selectTradeInfo(userNO);
			setList(list);
		} catch (SQLException e) {
			e.printStackTrace();
			return "Error";
		}
		return "selectTradeInfo";
	}
}
