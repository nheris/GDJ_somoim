package com.somoim.app.util;

import java.io.File;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {
	//파일삭제
	public boolean fileDelete(String path,String fileName)throws Exception{
		File file = new File(path,fileName);
		return file.delete();
	}
	public String fileSave(String path,MultipartFile file)throws Exception{
		File f = new File(path);
		
		if(f.isFile()) {
			throw new Exception();
		}
		
		if(!f.exists()) {
			f.mkdirs();
		}
		
		Calendar ca = Calendar.getInstance();
		String fileName = ca.getTimeInMillis()+"_"+file.getOriginalFilename();
		
		fileName=UUID.randomUUID().toString()+"_"+file.getOriginalFilename();
		
		f= new File(f,fileName);
		
		file.transferTo(f);
		return fileName;
	}
}
