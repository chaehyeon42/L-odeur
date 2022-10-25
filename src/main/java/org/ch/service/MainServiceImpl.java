package org.ch.service;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.ch.mapper.MainMapper;
import org.ch.model.MainVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class MainServiceImpl implements MainService {
		@Autowired
		MainMapper Ma;
		
		// 예약시 방 분류
		public ArrayList<MainVO> room1(){
			return Ma.room1();
		}

		public ArrayList<MainVO> room2(String main){
			return Ma.room2(main);
		}
		
		public void reservation(MainVO mainvo) {
			Ma.reservation(mainvo);
		}
		
		//예약후 예약 확인
		public ArrayList<MainVO> reser(MainVO mainvo) {
			return Ma.reser(mainvo);
		}
		
		//회원가입
		 public void join(MainVO mainvo) {
			 Ma.join(mainvo);
		 }
		 
		 public int memberidCheck(String memberid) throws Exception {
				
				return Ma.memberidCheck(memberid);
			}
		    
		    public int phonenumberCheck(String phonenumber) throws Exception {
				
				return Ma.phonenumberCheck(phonenumber);
			}
		    
		    public MainVO membername(MainVO mainvo) {
				return Ma.membername(mainvo);
			}
		    
		    public MainVO memberpw(MainVO mainvo)throws Exception{
		    	return Ma.memberpw(mainvo);
		    }
		    
		  //로그인
			 public boolean login(MainVO mainvo, HttpSession session) {
				 MainVO login=Ma.login(mainvo);
				 boolean result=false;
				 if(login!=null) {
					 session.setAttribute("login", login);
					 result=true;
				 }
				return result;
			 }
			 
		    
}
