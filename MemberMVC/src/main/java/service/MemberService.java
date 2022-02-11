package service;

import java.sql.SQLException;

import model.MemberDao;
import model.MemberVO;

public class MemberService {
	private MemberDao dao;

	public MemberService() {
		dao = new MemberDao();
	}

	public void insert(MemberVO m) throws SQLException {
		// TODO Auto-generated method stub
		dao.insertMember(m);
	}

	public MemberVO getMember(String id) throws SQLException {
		// TODO Auto-generated method stub
		return dao.findMember(id);
	}

	public boolean isExist(String id) throws SQLException {
		// TODO Auto-generated method stub
		return dao.isExist(id);
	}

	public void edit(MemberVO m) throws SQLException {
		// TODO Auto-generated method stub
		dao.updateMember(m);

	}

//	public void delete(int num) {
//		// TODO Auto-generated method stub
//		dao.delete(num);
//	}

	public MemberVO login(String id, String password) throws SQLException {
		// TODO Auto-generated method stub
		return dao.login(id, password);
	}

}
