package com.cjg.bank.persistence;

import java.sql.SQLException;
import java.util.List;

import com.cjg.bank.domain.TradeInfo;


public interface TradeDAO {
	/**
	 * ���ҵ��
	 */
	void saveMoney(TradeInfo tradeInfo)
			throws SQLException;
	/**
	 * ȡ��ҵ��
	 * @param userNO ��ǰ��¼�û��ʺ�
	 * @param money ȡ����
	 * @param s �������ͣ�ȡ��
	 * @param balance ��ǰ�ʻ����
	 */
	void fetchMoney(TradeInfo tradeInfo)
			throws SQLException;
	/**
	 * ��ѯ�ʻ����
	 * @param userNO ��ǰ��¼�û��ʺ�
	 * @return �����ʻ����
	 */
	Integer selectBalance(String userNO) throws SQLException;
	/**
	 * ��ѯ��ǰ��¼�û����н�����Ϣ
	 * @param userNO ��ǰ��¼�û��ʺ�
	 * @return ���ؽ�����Ϣ
	 */
	List selectTradeInfo(String userNO) throws SQLException;
}
