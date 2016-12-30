/** 
 * @(#)CharsetResponseFilter.java 1.0.0 2016年12月22日 下午1:36:05  
 *  
 * Copyright © 2016 善林金融.  All rights reserved.  
 */

package com.slfinance.work.filter;

import java.io.IOException;

import javax.ws.rs.container.ContainerRequestContext;
import javax.ws.rs.container.ContainerResponseContext;
import javax.ws.rs.container.ContainerResponseFilter;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.ext.Provider;

/**
 * 
 * jersey2.3 需要指定charset的数值
 * 
 * @author zhangzs
 * @version $Revision:1.0.0, $Date: 2016年12月22日 下午1:36:05 $
 */
@Provider
public class CharsetResponseFilter implements ContainerResponseFilter {

	@Override
	public void filter(ContainerRequestContext requestContext,ContainerResponseContext responseContext) throws IOException {
		MediaType type = responseContext.getMediaType();
		if (type != null && !type.getParameters().containsKey(MediaType.CHARSET_PARAMETER)) {
			MediaType typeWithCharset = type.withCharset("utf-8");
			responseContext.getHeaders().putSingle("Content-Type", typeWithCharset);
		}
	}

}
