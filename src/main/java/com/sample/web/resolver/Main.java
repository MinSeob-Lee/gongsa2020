package com.sample.web.resolver;

import java.awt.Image;
import java.awt.image.RenderedImage;
import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.URL;

import javax.imageio.ImageIO;

public class Main {

	public static void main(String[] args) {
		String exUrl = "http://www.culture.go.kr/upload/rdf/20/08/rdf_202008221115488301.jpg";
		String saveDirectory = "C:\\APP\\workspace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\final-project\\resources\\sample-images\\";
		saveImage(exUrl, "title", saveDirectory);
		
	}
	public static void saveImage(String strUrl, String title, String saveDirectory) {
		
		String realFilename = System.currentTimeMillis() + title;
		String ext = "."+ strUrl.substring(strUrl.lastIndexOf(".")+1, strUrl.length());
		
		try {
			 URL url = new URL(strUrl);
			 InputStream in = new BufferedInputStream(url.openStream());
			 ByteArrayOutputStream out = new ByteArrayOutputStream();
			 byte[] buf = new byte[1024];
			 int n = 0;
			 while (-1!=(n=in.read(buf)))
			 {
			    out.write(buf, 0, n);
			 }
			 out.close();
			 in.close();
			 byte[] response = out.toByteArray();
			 FileOutputStream fos = new FileOutputStream(saveDirectory + realFilename + ext);
			 System.out.println(saveDirectory + realFilename + ext);
			 fos.write(response);
			 fos.close();
		} catch (Exception e){
			e.printStackTrace();
		}
	}
}
