package com.myProject.controller;


import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Locale;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpRequest;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myProject.DAO.IUserDAO;
import com.myProject.DAO.UserDAO;
import com.myProject.DTO.UserDTO;

/**
 * Handles requests for the application home page.
 */
@Configuration
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	UserDAO dao ;

	@Autowired
	private SqlSession sqlSession;
	 
	@Autowired
	public void setDao(UserDAO dao) {
		this.dao = dao;
	}
	
	@Autowired
	private JavaMailSender mailSender;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/homePage", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session, HttpServletRequest request) {		
		String sessionID = "";
		
		sessionID = (String)session.getAttribute("sessionID");
		
		session.setAttribute("sessionID", sessionID);
		return "/home/homePage";
	}
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, Model model, HttpSession session) {
		
		UserDTO dto ;
		
		String id = request.getParameter("loginID");
		String password = request.getParameter("loginPW");
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);		
		dto = dao.userInfoDAO(id);
		
		if(dto.getPassword().equals(password)) {
			String sessionID = dto.getId();
			session.setAttribute("sessionID", sessionID);			

			String msg = "loginSuccess";
			model.addAttribute("msg", msg);
			
			String name = dto.getName();
			
			model.addAttribute("name", name);
		}else {
			String msg = "loginFail";
			model.addAttribute("msg", msg);
		}
		
		return "/home/homePage";
	}
	
	@RequestMapping(value="findID", method=RequestMethod.POST)
	public String findID(HttpServletRequest request, Model model) {
		
		UserDTO dto = new UserDTO();
		
		String name = request.getParameter("findIdName");
		String email = request.getParameter("findIdEmail");
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		dto = dao.userFindID(name, email);
		
		String id = null;		
		String msg = null;
		
		if(dto == null) {
			msg = "failFidingID";
			model.addAttribute("msg", msg);
		}else {
			msg ="successFindingID";
			id = dto.getId();
			model.addAttribute("msg", msg);
			model.addAttribute("id", id);			
		}
		
		
		return "/home/homePage";
	}
	
	@RequestMapping(value="findPW", method=RequestMethod.POST)
	public String findPW(HttpServletRequest request, Model model) {
		
		UserDTO dto = new UserDTO();
		
		String name = request.getParameter("findPWName");
		String id = request.getParameter("findPWID");
		System.out.println("userFindPW 시작");
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		dto = dao.userFindPW(name, id);
		System.out.println("userFindPW 끝");
			
		String msg = null;
		
		String pw = null;
		
		StringBuffer makingPW = new StringBuffer();
		Random rnd = new Random();
		for (int i = 0; i < 8; i++) {
		    int rIndex = rnd.nextInt(3);
		    switch (rIndex) {
		    case 0:
		        // a-z
		    	makingPW.append((char) ((int) (rnd.nextInt(26)) + 97));
		        break;
		    case 1:
		        // A-Z
		    	makingPW.append((char) ((int) (rnd.nextInt(26)) + 65));
		        break;
		    case 2:
		        // 0-9
		    	makingPW.append((rnd.nextInt(10)));
		        break;
		    }
		}
		
		if(dto == null) {
			msg = "failFidingPW";
			model.addAttribute("msg", msg);
		}else {
			int result = 0;
			String newPW = makingPW.toString();
			System.out.println("비밀번호(HOME) : " + newPW);
			System.out.println("changingPW 시작");
			result = dao.changingPW(newPW, id);
			System.out.println("changingPW 끝");
			
			if(result != 0) {
				String setfrom = "ckr567@gmail.com";         
			    String tomail  = dto.getEmail();     // 받는 사람 이메일
			    System.out.println("받는사람 : " + tomail);
			    String title   = "(gongdollee)새로운 비밀번호입니다.";      // 제목
			    String content = newPW.toString();    // 내용
			   
			    try {
			      MimeMessage message = mailSender.createMimeMessage();
			      MimeMessageHelper messageHelper 
			                        = new MimeMessageHelper(message, true, "UTF-8");
			 
			      messageHelper.setFrom(setfrom);  // 보내는사람 생략하거나 하면 정상작동을 안함
			      messageHelper.setTo(tomail);     // 받는사람 이메일
			      messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			      messageHelper.setText(content);  // 메일 내용
			     
			      mailSender.send(message);
			    } catch(Exception e){
			      System.out.println(e);
			    }
			    
			    msg = "successFidingPW";
			    model.addAttribute("msg", msg);
			}else {
				msg="failFidingPW2";
			    model.addAttribute("msg", msg);
			}
						
		}
		
		
		return "/home/homePage";
	}
	
	@RequestMapping(value="/join", method = RequestMethod.POST)
	public String join(HttpServletRequest request, Model model) {
		
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String password = request.getParameter("pw");
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String day = request.getParameter("day");
		String date = year + "-" + month + "-" + day;
		date = ((String) date).replaceAll(System.getProperty("line.separator"), " ");
		java.util.Date date2 = new java.util.Date(); 
		try {
			date2 = transFormat.parse(date);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		java.sql.Date birthday = new java.sql.Date(date2.getTime()); 	
		String email = request.getParameter("email");
		int gender = Integer.parseInt(request.getParameter("gender"));
		String preference = request.getParameter("preference");
		
		int result = 0 ;
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);
		result = dao.joinDAO(name, id, password, birthday, email, gender, preference);
		
		if(result != 0) {
			String msg = "joinSuccess";
			model.addAttribute("msg" , msg);
		}else {
			String msg = "joinFail";

			model.addAttribute("msg" , msg);
		}
		
		return "/home/homePage";
	}
	
	@RequestMapping(value="/overlapID", method = RequestMethod.GET)
	public String overlapID(HttpServletRequest request, Model model) {		
		
		String id = request.getParameter("id");
		
		IUserDAO dao = sqlSession.getMapper(IUserDAO.class);		
		int result = dao.overlapID(id);
		
		System.out.println(request.getParameter("gender"));
		
		String msg = null;
		
		if(result != 0) {
			msg = "overlap";
		}else {
			msg = "notOverlap";
		}
		
		model.addAttribute("msg", msg);
		
		model.addAttribute("name", request.getParameter("name"));
		model.addAttribute("id", request.getParameter("id"));
		model.addAttribute("pw", request.getParameter("pw"));
		model.addAttribute("chkPW", request.getParameter("chkPW"));
		model.addAttribute("email", request.getParameter("email"));
		model.addAttribute("year", request.getParameter("year"));
		model.addAttribute("month", request.getParameter("month"));
		model.addAttribute("day", request.getParameter("day"));
		model.addAttribute("gender", request.getParameter("gender"));
		
		HashMap<String, String> map = new HashMap<String, String>();
		
		map.put("musical", request.getParameter("musical"));
		map.put("classic", request.getParameter("classic"));
		map.put("theater", request.getParameter("theater"));
		map.put("opera", request.getParameter("opera"));
		map.put("ballet", request.getParameter("ballet"));
		map.put("etc", request.getParameter("etc"));
		model.addAttribute("preference", map);

		
		
		
	    return "/home/homePage";
	}
	
	@RequestMapping(value="/logout")
	public String logout(HttpServletRequest request, HttpSession session) {
		
		session.invalidate();
		
		return "/home/homePage";
	}
	
}
