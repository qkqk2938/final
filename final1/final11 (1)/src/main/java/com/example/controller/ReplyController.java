package com.example.controller;


import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.GoodVO;
import com.example.domain.ReviewCommentVO;
import com.example.mapper_oracle.CafeMapper;
import com.example.mapper_oracle.GmemberMapper;
import com.example.mapper_oracle.GoodMapper;
import com.example.mapper_oracle.ReviewCommentMapper;
import com.example.mapper_oracle.ReviewImageMapper;
import com.example.mapper_oracle.ReviewMapper;




@Controller
public class ReplyController {
	   @Autowired
	   CafeMapper cMapper;
	   @Autowired
	   ReviewMapper rMapper;
	   @Autowired
	   ReviewImageMapper riMapper;
	   @Autowired
	   GmemberMapper gMapper;
	   @Autowired
	   ReviewCommentMapper rcMapper;
	  
	   @Autowired
	   GmemberMapper gmMapper;
		@Resource(name="uploadPath")
		String path;
	   
		@RequestMapping("reply")
		public void list(Model model,int ccode){
			model.addAttribute("reviewlist",rMapper.list(ccode));
			System.out.println(rMapper.list(ccode));
		    model.addAttribute("rlist",cMapper.read(ccode));
		}
		
		@RequestMapping("replycomment")
		@ResponseBody
		public List<ReviewCommentVO> read(int rcode,Model model){	
			
			
		    return rcMapper.read(rcode) ;
		}
		
		@RequestMapping(value="reinsert",method = RequestMethod.POST)
		@ResponseBody
		public void insert(ReviewCommentVO vo,HttpSession session,Model model){
			String gid = (String) session.getAttribute("gid");
			if(gid!=null){
				model.addAttribute("gmember2", gMapper.read(gid));
			}
			rcMapper.insert(vo);	
		}
		
		//추가~~~~~~~~~~~
		@Autowired
		GoodMapper goodMapper;
		@RequestMapping(value = "good1", method = RequestMethod.GET)
		public String good(int ccode, HttpSession session) {
			boolean isLogin=(String) session.getAttribute("gid")==null?false:true;
			if (isLogin) {
				return "redirect:reply?ccode=" + ccode;
			} else {
				return "login";
			}
		}
		@RequestMapping("goodCount")
		@ResponseBody
		public HashMap<String,Object> goodCount(int rcode,HttpSession session){
			HashMap<String,Object> map=new HashMap<>();
			
			boolean idId = (String) session.getAttribute("gid")==null?false:true;
			String gid = (String) session.getAttribute("gid");
			if(idId){
				GoodVO vo=new GoodVO();
				vo.setGid(gid);
				vo.setRcode(rcode);
				int userGood=goodMapper.read(vo)==null?0:1;
				map.put("userGood", userGood);
				map.put("goodCount", goodMapper.goodCount(rcode));
				System.out.println("일로오니?");
			}else{
				System.out.println("일로오니!");
				map.put("goodCount", goodMapper.goodCount(rcode));
			}
			return map;
		}
	
}
