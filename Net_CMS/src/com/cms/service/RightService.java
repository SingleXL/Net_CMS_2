package com.cms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cms.dao.IRightDao;
import com.cms.model.Right;

@Service("rightService")
public class RightService {

	@Autowired
	private IRightDao iRightDao;

	public List<Right> findAllRights() {
		return iRightDao.findAllRights();
	}

	// 添加权限
	public void addRight(Right r) {

		int pos = 0;
		long code = 1l;

		// 查询 最大权限位上的最大权限码
		List<Right> rights = iRightDao.findTopRight();
		if (rights.size()==0) {
			pos = 0;
			code = 1l;
		} else {
			Right right = rights.get(0);
			int topPos = right.getRightPos();
			long topCode = right.getRightCode();
			// 判断权限码是否达到最大值
			if (topCode >= (1L << 60)) {
				pos = topPos + 1;
				code = 1;
			} else {
				pos = topPos;
				code = topCode << 1;
			}
		}
		r.setRightPos(pos);
		r.setRightCode(code);

		iRightDao.addRight(r);
	}

	// 追加权限
	public void appendRight(Right right) {
		
		System.out.println(1);
		// 查询right是否存在 --> 重新启动时防止重复添加
		Right right2 = iRightDao.findRightByUrl(right);
		
		if (iRightDao.findRightByUrl(right) == null) {
			addRight(right);
		}
	}

}
