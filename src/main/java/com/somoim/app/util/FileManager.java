package com.somoim.app.util;

import java.io.File;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileManager {

	// 파일 삭제 하는 메소드
	public Boolean fileDelete(String path, String fileName)throws Exception{
		File file = new File(path, fileName);
		return file.delete();
	}
	
	//파일 저장 하는 메소드
	public String fileSave(String path, MultipartFile file)throws Exception{
		File files = new File(path);
		
		// 경로에 파일이 있는지 없는지 비교
		if(files.isFile()) {
			// 강제로 예외처리 시키기 
			throw new Exception();
		}
		
		// 경로에 디렉터리/파일이 있는지 조회
		if(!files.exists()) {
			// 없을경우 만듬
			files.mkdirs();
		}
				
		// 파일 명칭 정하기
		// UUID 사용
		String fileName=UUID.randomUUID().toString()+"_"+file.getOriginalFilename();
		System.out.println(fileName);
		
		files = new File(files, fileName);
		
		// MultipartFile의 transferTo메소드 사용 다중파일 업로드 가능하게 설정
		file.transferTo(files);
		
		return fileName;
	}
	
	
}
