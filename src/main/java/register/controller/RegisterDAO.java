package register.controller;

import org.mybatis.spring.support.SqlSessionDaoSupport;

public class RegisterDAO extends SqlSessionDaoSupport {
	
	public void registerSignUp(MemberCommand command) {
		getSqlSession().update("registerInsert",command);
	}
	
	
}
