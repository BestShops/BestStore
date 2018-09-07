package com.bs.beststore.util;

import java.awt.Image;
import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

public class ImagesUtil {

	/**
	 * 缩放图片
	 * @param src	源文件路径
	 * @param dest	缩放后保存的路径
	 * @param width	缩放的目标宽度
	 * @param height 缩放的目标高度
	 * @throws IOException 
	 */
	public static void zoomImage(String src,String dest,int width,int height) throws IOException {
		double wr=0;
		double hr=0;
		File srcFile=new File(src);
		File destFile=new File(dest);
		
		BufferedImage bufImg=ImageIO.read(srcFile);	//读取图片
		Image itemp=bufImg.getScaledInstance(width, height, bufImg.SCALE_SMOOTH);	//设置缩放目标图片模板
		
		wr=width*1.0/bufImg.getWidth();
		hr=height*1.0/bufImg.getHeight();
		
		AffineTransformOp ato = new AffineTransformOp(AffineTransform.getScaleInstance(wr, hr), null);
		
		itemp=ato.filter(bufImg, null);
		try {
			ImageIO.write((BufferedImage) itemp,dest.substring(dest.lastIndexOf(".")+1), destFile); //写入缩减后的图片
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

	
	
	
	
}
