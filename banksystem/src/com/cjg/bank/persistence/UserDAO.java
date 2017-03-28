package com.cjg.bank.persistence;

import java.sql.SQLException;

import com.cjg.bank.domain.UserInfo;


public interface UserDAO {
	/**
	 * ��¼ҵ��
	 * @param user ��¼��Ϣ����
	 * @return ��¼�ɹ���־
	 */
	boolean login(UserInfo user) throws SQLException;
	/**
	 * ע��ҵ��
	 * @param user ע����Ϣ����
	 */
	void registService(UserInfo user) throws SQLException;
	/**
	 * ��ѯ�����ʻ���Ϣ
	 * @param userNO ��ǰ��¼�û��ʺ� 
	 * @return
	 */
	UserInfo selectUser(String userNO) throws SQLException;
	/**
	 * �޸ĸ����ʻ���Ϣ
	 * @param user
	 * @param userNO
	 */
	void updateUserInfo(UserInfo user,String userNO) throws SQLException;
	/**
	 * ע�������ʻ�
	 * @param userNO
	 */
	void deleteUserInfo(String userNO) throws SQLException;
}
