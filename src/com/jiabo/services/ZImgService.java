package com.jiabo.services;

import java.io.File;
import java.io.InputStream;

import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.InputStreamRequestEntity;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.methods.multipart.FilePart;
import org.apache.commons.httpclient.methods.multipart.MultipartRequestEntity;
import org.apache.commons.httpclient.methods.multipart.Part;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.jiabo.bean.ZImgResult;
import com.jiabo.util.Const;

@Service
public class ZImgService {

	public ZImgResult upload(InputStream stream, String fileType) {
		ZImgResult result = new ZImgResult();
		try {
			HttpClient client = new HttpClient();
			PostMethod method = new PostMethod(Const.ZIMG + "upload");
			InputStreamRequestEntity entity = new InputStreamRequestEntity(
					stream);
			method.setRequestEntity(entity);
			method.addRequestHeader("Content-Type", fileType);
			int status = client.executeMethod(method);
			if (status == HttpStatus.SC_OK) {
				String resultJson = method.getResponseBodyAsString();
				JSONObject object = JSON.parseObject(resultJson);
				result.setSuccess(object.getBooleanValue("ret"));
				if (result.isSuccess()) {
					JSONObject info = object.getJSONObject("info");
					result.setMd5(info.getString("md5"));
					result.setSize(info.getIntValue("size"));
				} else {
					JSONObject error = object.getJSONObject("error");
					result.setErrorCode(error.getIntValue("code"));
					result.setErrorMsg(error.getString("message"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			result.setErrorCode(-1);
			result.setErrorMsg("connect error");
		}
		return result;
	}

	@Deprecated
	public ZImgResult upload2(File file) {
		ZImgResult result = new ZImgResult();
		try {
			HttpClient client = new HttpClient();
			PostMethod method = new PostMethod(Const.ZIMG + "upload");
			FilePart part = new FilePart("blob", file);
			MultipartRequestEntity entity = new MultipartRequestEntity(
					new Part[] { part }, method.getParams());
			method.setRequestEntity(entity);
			int status = client.executeMethod(method);
			if (status == HttpStatus.SC_OK) {
				String resultJson = method.getResponseBodyAsString();
				JSONObject object = JSON.parseObject(resultJson);
				result.setSuccess(object.getBooleanValue("ret"));
				if (result.isSuccess()) {
					JSONObject info = object.getJSONObject("info");
					result.setMd5(info.getString("md5"));
					result.setSize(info.getIntValue("size"));
				} else {
					JSONObject error = object.getJSONObject("error");
					result.setErrorCode(error.getIntValue("code"));
					result.setErrorMsg(error.getString("message"));
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			result.setErrorCode(-1);
			result.setErrorMsg("connect error");
		}
		return result;
	}
}
