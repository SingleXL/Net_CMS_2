package com.cms.auth;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/**
 * 用来标识类中的哪些方法需要进行权限控制
 */

@Retention(RetentionPolicy.RUNTIME)
public @interface AuthMethod {

	public String rightName();
	public String rightUrl();
	
}
