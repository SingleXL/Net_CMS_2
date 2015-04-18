package com.cms.controller;

import java.util.Arrays;
import java.util.Date;

import javax.servlet.http.HttpSession;

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
	public String upload(MultipartFile attach, HttpSession session) {

		String extName = FilenameUtils.getExtension(attach
				.getOriginalFilename());

		Attachment attTemp = new Attachment();
		attTemp.setNewName(new Date().getTime() + "." + extName);
		attTemp.setOldName(attach.getOriginalFilename());

		boolean isImg = ImgTypes.imgType.contains(extName);
		if (isImg) {
			attTemp.setType("图片类型");
			attTemp.setImg(ImgTypes.imgType.contains(extName));
		} else {
			attTemp.setType("文档类型");
			attTemp.setImg(false);
		}

		return new Gson().toJson(Arrays.asList("f", "a"));
	}

}
