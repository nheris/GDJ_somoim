package com.somoim.app.moim.meet;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.member.MemberDTO;
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
	public List<MeetDTO> getList(MeetDTO meetDTO) throws Exception {
		return meetDAO.getList(meetDTO);
		
	}
	
	//add
	public int add(MeetDTO meetDTO, MultipartFile file) throws Exception {
		int result = meetDAO.add(meetDTO);
		
		String path = servletContext.getRealPath("/resources/upload/meet");
		
		String fileName = fileManager.fileSave(path, file);
		
		MeetFileDTO meetFileDTO = new MeetFileDTO();
		meetFileDTO.setFileName(fileName);
		meetFileDTO.setOriName(file.getOriginalFilename());
		meetFileDTO.setMeetNum(meetDTO.getMeetNum());
		
		result = meetDAO.fileAdd(meetFileDTO);
		

		return result;
	}
	
	
}
