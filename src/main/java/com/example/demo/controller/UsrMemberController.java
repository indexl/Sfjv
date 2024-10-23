package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.demo.dto.Member;
import com.example.demo.service.MemberService;

@Controller
public class UsrMemberController {

	private int lastMemberId;
	private MemberService memberService;

	public UsrMemberController(MemberService memberService) {
		this.memberService = memberService;
		this.lastMemberId = 0;

	}

	@GetMapping("/usr/member/doJoin")
	@ResponseBody
	public String doJoin(String loginId, String loginPw, String loginPwChk, String name) {

		Member member = new Member();

		if (loginId == null) { 
			return "아이디는 필수 입력 정보입니다";
		}
		memberService.joinLoginId(loginId);

		if (loginPw == null) {
			return "비밀번호는 필수 입력 정보입니다";
		}
		memberService.joinLoginPw(loginPw);
		
		
		
		return null;
	}
}