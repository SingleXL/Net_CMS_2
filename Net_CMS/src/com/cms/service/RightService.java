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

	// ���Ȩ��
	public void addRight(Right r) {

		int pos = 0;
		long code = 1l;

		// ��ѯ ���Ȩ��λ�ϵ����Ȩ����
		List<Right> rights = iRightDao.findTopRight();
		if (rights.size()==0) {
			pos = 0;
			code = 1l;
		} else {
			Right right = rights.get(0);
			int topPos = right.getRightPos();
			long topCode = right.getRightCode();
			// �ж�Ȩ�����Ƿ�ﵽ���ֵ
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

	// ׷��Ȩ��
	public void appendRight(Right right) {
		
		System.out.println(1);
		// ��ѯright�Ƿ���� --> ��������ʱ��ֹ�ظ����
		Right right2 = iRightDao.findRightByUrl(right);
		
		if (iRightDao.findRightByUrl(right) == null) {
			addRight(right);
		}
	}

}
