package com.jiabo.bean;

public class ZImgParam {

	private String md5;
	private int width;
	private int height;
	private int resizeType;
	private int grayscale;
	private int x;
	private int y;
	private int rotate;
	private int quality;
	private String format;

	public String getParam() {
		return "?w=" + width + "&h=" + height + "&g=" + grayscale + "&x=" + x
				+ "&y=" + y + "&r=" + resizeType + "&q=" + quality + "&f="
				+ format;
	}

	public String getMd5() {
		return md5;
	}

	public void setMd5(String md5) {
		this.md5 = md5;
	}

	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getResizeType() {
		return resizeType;
	}

	public void setResizeType(int resizeType) {
		this.resizeType = resizeType;
	}

	public int getGrayscale() {
		return grayscale;
	}

	public void setGrayscale(int grayscale) {
		this.grayscale = grayscale;
	}

	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}

	public int getRotate() {
		return rotate;
	}

	public void setRotate(int rotate) {
		this.rotate = rotate;
	}

	public int getQuality() {
		return quality;
	}

	public void setQuality(int quality) {
		this.quality = quality;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}
}
