package com.example.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.example.domain.CafeVO;
import com.example.mapper_oracle.CafeImageMapper;
import com.example.mapper_oracle.HashtagMapper;
import com.example.mapper_oracle.MenuMapper;
import com.example.service.CafeService;
import com.example.service.ReadService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class CafeUpdateController {
	@Autowired
	MenuMapper mMapper;

	@Autowired
	ReadService rService;
	@Autowired
	CafeImageMapper ciMapper;
	@Autowired
	HashtagMapper hMapper;
	@Autowired
	CafeService cService;

	
	@RequestMapping("cafeupdate")
	public void cafeupdate(Model model,int ccode) {
		CafeVO vo = rService.read(ccode);

		model.addAttribute("vo", vo);
		model.addAttribute("cafeImage", ciMapper.list(ccode));
		model.addAttribute("menu", mMapper.list(ccode));
		model.addAttribute("tag",hMapper.read(ccode));
		
	}
	@RequestMapping(value = "cafeupdate", method = RequestMethod.POST)
	public String cafeupdatePost(CafeVO vo,MultipartHttpServletRequest multi,HttpServletRequest req) throws Exception{
		String path = req.getSession().getServletContext().getRealPath("/").concat("/resources/img/imgdb");
		MultipartFile file = multi.getFile("file");
		List<MultipartFile> files = multi.getFiles("files");
		List<MultipartFile> imagefiles = multi.getFiles("imageFile");
		if(!imagefiles.isEmpty()){
			ArrayList<String> images = new ArrayList<String>();
			for(MultipartFile attfile:imagefiles){
				System.out.println(attfile.getOriginalFilename());
				UUID uid = UUID.randomUUID();
				String savedName = uid.toString() + "_"+attfile.getOriginalFilename();
				File target = new File(path+"/",savedName);
				FileCopyUtils.copy(attfile.getBytes(), target);
				images.add(savedName);
			}
			if (images.size() > 0) { //추가한 파일이 있는경우
				// 기존의 첨부 이미지가 있으면 삭제
				List<String> oldimages = mMapper.menuImage(vo.getCcode());
				if (oldimages.size() > 0) {
					for (String image : oldimages) {
						new File(path + "/" + image).delete();
					}
				}
			}
				vo.setMenus(images);
			}
		if(!file.isEmpty()){
			if (!vo.getCimage().equals("")) { // 기존이미지가 존재하면 삭제
				new File(path + "/" + vo.getCimage()).delete();
			}
			UUID uid = UUID.randomUUID();
			String savedName = uid.toString() + "_"+file.getOriginalFilename();
			File target = new File(path,savedName);
			FileCopyUtils.copy(file.getBytes(), target);
			vo.setCimage(savedName);
		}
		if(!files.isEmpty()){
			ArrayList<String> images = new ArrayList<String>();
			for(MultipartFile attfile:files){
				UUID uid = UUID.randomUUID();
				String savedName = uid.toString() + "_"+attfile.getOriginalFilename();
				File target = new File(path+"/",savedName);
				FileCopyUtils.copy(attfile.getBytes(), target);
				images.add(savedName);
			}
			if (images.size() > 0) { //추가한 파일이 있는경우
				// 기존의 첨부 이미지가 있으면 삭제
				List<String> oldimages = ciMapper.cafeImage(vo.getCcode());
				if (oldimages.size() > 0) {
					for (String image : oldimages) {
						new File(path + "/" + image).delete();
					}
				}
			}
				vo.setImages(images);
			}
		
		cService.update(vo);
		return "redirect:list";
	}
}
