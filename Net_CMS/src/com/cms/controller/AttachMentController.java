package com.cms.controller;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.cms.constant.ImgTypes;
import com.cms.model.Attachment;
import com.google.gson.Gson;

@Controller
@RequestMapping("/admin/attach")
public class AttachMentController {

	@RequestMapping("/upload")
	@ResponseBody
	public Attachment upload(MultipartFile attach, HttpSession session) throws IOException {
		
		String upPath = session.getServletContext().getRealPath("/resources/upload/files");
		String thumbsPath = session.getServletContext().getRealPath("/resources/upload/files/thumbs");
		
		File f = new File(upPath+"/"+attach.getOriginalFilename());
		FileUtils.copyInputStreamToFile(attach.getInputStream(), f);
		
		String extName = FilenameUtils.getExtension(attach
				.getOriginalFilename());

		Attachment attTemp = new Attachment();
		String sn = new Date().getTime()+"";
		attTemp.setSn(sn);
		attTemp.setNewName(sn + "." + extName);
		attTemp.setOldName(attach.getOriginalFilename());

		boolean isImg = ImgTypes.imgType.contains(extName);
		
		if (isImg) {
			attTemp.setType("图片类型");
			attTemp.setImg(true);
		} else {
			attTemp.setType("文档类型");
			attTemp.setImg(false);
		}
		
		
		
		return attTemp;
	}

}
