/** 
 * @(#)CodeGenerator.java 1.0.0 2015年4月9日 上午10:51:52  
 *  
 * Copyright © 2015 善林金融.  All rights reserved.  
 */ 

package com.slfinance.component;

import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**   
 * 
 *  
 * @author  zhangmingtao
 * @version $Revision:1.0.0, $Date: 2015年4月9日 上午10:51:52 $ 
 */
public abstract class CodeGenerator {

	public int generateCode() {
		Lock lock = new ReentrantLock(); 
		int code = 0;
		try {
			lock.lock();
			code = doGetCurrentCode();
			code ++;
			doSetCurrentCode();
		}finally {
			lock.unlock();
		}
		return code;
	}

	protected abstract int doGetCurrentCode();
	
	protected abstract void doSetCurrentCode();

	
}
