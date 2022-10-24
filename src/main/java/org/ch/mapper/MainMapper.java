package org.ch.mapper;

import java.util.ArrayList;


import org.ch.model.MainVO;

public interface MainMapper {
	// 예약시 방 분류
	public ArrayList<MainVO> room1();

	public ArrayList<MainVO> room2(String main);

	//예약을 누를때
	public void reservation(MainVO mainvo);
	
	//예약후 예약 확인
	public ArrayList<MainVO> reser();
	
	// 회원가입
	public void join(MainVO mainvo);
	
	 //로그인
	public MainVO login(MainVO mainvo);
	 

	// 아이디
	public int memberidCheck(String memberid);

	// 핸드폰번호
	public int phonenumberCheck(String phonenumber);

	// 이름
	public MainVO membername(MainVO mainvo);

	// 비밀번호
	public MainVO memberpw(MainVO mainvo) throws Exception;

}
