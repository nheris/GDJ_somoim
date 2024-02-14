package com.somoim.app.moim.meet;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.moim.MoimFileDTO;
import com.somoim.app.util.FileManager;

@Service
public class MeetService {
	@Autowired
	private MeetDAO meetDAO;
	@Autowired
	private FileManager fileManager;
	@Autowired
	private ServletContext servletContext;
	
	//list
	
	//add
	public int add(MeetDTO meetDTO, MultipartFile file) throws Exception {
		int result = meetDAO.add(meetDTO);
		
		String path = servletContext.getRealPath("/resources/upload/meet");
		
		String fileName = fileManager.fileSave(path, file);
		
		MeetFileDTO meetFileDTO = new MeetFileDTO();
		meetFileDTO.setFileName(fileName);
		meetFileDTO.setOriName(file.getOriginalFilename());
		meetFileDTO.setMoimNum(meetDTO.getMoimNum());
		
		result = meetDAO.fileAdd(meetFileDTO);
		

		return result;
	}
	
	
}
