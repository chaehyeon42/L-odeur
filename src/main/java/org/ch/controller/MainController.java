package org.ch.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.ch.model.MainVO;
import org.ch.service.MainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;






@Controller
public class MainController {

	@Autowired
 	private MainService MS;
	
	//메인화면
	@RequestMapping(value="/main", method = RequestMethod.GET)
	public String main(Model model) {
		
		model.addAttribute("room1", MS.room1());
		
		return "Main/main";
	}
	
	
	// 예약시 인원 수
	@RequestMapping(value = "/main/{m}", method = RequestMethod.GET)
	public ResponseEntity<ArrayList<MainVO>> getmain(@PathVariable String m) {
			
		return new ResponseEntity<>(MS.room2(m), HttpStatus.OK);
	}
	
	
	//예약을 누를때
	@RequestMapping(value = "/reservation", method = RequestMethod.POST)
	public String reservationPOST(MainVO mainvo) {
		System.out.println(mainvo);
		
		MS.reservation(mainvo);
	
		return "redirect:/reservation";
	}
	
	//예약 화면
	@RequestMapping(value="/reservation", method = RequestMethod.GET)
	public String reservation(MainVO mainvo) {
		
		return "Main/reservation";
	}
	
	
	
	//로그인 화면
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(MainVO mainvo) {
		return "Main/login";
    }
    
    //로그인기능
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String loginPost(MainVO mainvo, HttpSession session, RedirectAttributes rttr) {
    	
        boolean result = MS.login(mainvo, session);
        
        if(result) {
         session.setAttribute("memberid", mainvo.getMemberid());
         session.setAttribute("memberpw", mainvo.getMemberpw());
         session.setAttribute("membername", mainvo.getMembername());
 
         System.out.println("로그인에 성공했습니다.");
         rttr.addAttribute("loginsuccess");
  
         return "redirect:/main";
        }else {
         rttr.addAttribute("loginfail");
         System.out.println("아이디 및 비밀번호가 잘못되었습니다.");
         return "redirect:/login";
        }
        
    }
    
	//로그아웃
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout(HttpSession session, RedirectAttributes rttr) {
		session.invalidate();
		rttr.addAttribute("logout");
		return "redirect:/main";
	}
    
    
  //회원가입 화면
    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signup() {
		return "Main/signup";
    }
    
    
	//회원가입 기능
    @RequestMapping(value = "/signup", method = RequestMethod.POST)
    public String joinPost(MainVO mainvo) {
    	MS.join(mainvo);
    	return "redirect:/login";
    }
	
	
}

