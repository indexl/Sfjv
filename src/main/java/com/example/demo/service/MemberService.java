package com.example.demo.service;

import org.springframework.stereotype.Service;

import com.example.demo.dao.MemberDao;

@Service
public class MemberService {
	
	private MemberDao memberDao;
	
	public MemberService(MemberDao memberDao) {
		this.memberDao = memberDao;
	}

	public void joinLoginId(String loginId) {
		memberDao.joinLoginId(loginId);
		
		
	}

	public void joinLoginPw(String loginPw) {
		memberDao.joinLoginPw(loginPw);
		
	}
}

