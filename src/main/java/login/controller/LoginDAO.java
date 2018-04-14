package login.controller;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import register.controller.MemberCommand;
 
public class LoginDAO extends SqlSessionDaoSupport {
	
	public MemberCommand loginId(MemberCommand command) {
		return getSqlSession().selectOne("loginId",command);
	}
	public MemberCommand loginInfo(MemberCommand command) { 
		return getSqlSession().selectOne("loginSessionImformation",command);
	}
}