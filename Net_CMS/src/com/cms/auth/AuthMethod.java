package com.cms.auth;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/**
 * ������ʶ���е���Щ������Ҫ����Ȩ�޿���
 */

@Retention(RetentionPolicy.RUNTIME)
public @interface AuthMethod {

	public String rightName();
	public String rightUrl();
	
}
