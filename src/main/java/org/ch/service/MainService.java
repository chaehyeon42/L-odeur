package org.ch.service;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.ch.model.MainVO;




public interface MainService {
	//방예약(분류)
	public ArrayList<MainVO> room1(); 
	public ArrayList<MainVO> room2(String main); 
	
	//예약을 누를때
	public void reservation(MainVO mainvo);
	
	//예약후 예약 확인
	public ArrayList<MainVO> reser(MainVO mainvo);
	
	//방분류 페이지 설계
	public ArrayList<MainVO> room(MainVO mainvo);
	
	//예약 삭제
	 public int remove(int bno);
	
	//회원가입
	 public void join(MainVO mainvo);
	
	 //로그인
	 public boolean login(MainVO mainvo, HttpSession session);
	 
	 //아이디
	 public int memberidCheck(String memberid) throws Exception;
	 
	 //핸드폰번호
	 public int phonenumberCheck(String phonenumber) throws Exception;
	 //이름
	 public MainVO membername(MainVO mainvo);
	 //비밀번호
	 public MainVO memberpw(MainVO mainvo)throws Exception;
	
}
