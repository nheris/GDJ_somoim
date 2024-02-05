package com.somoim.app.moim;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.member.MemberDTO;
import com.somoim.app.util.FileManager;

@Service
public class MoimService {
	@Autowired
	private MoimDAO moimDAO;
	@Autowired
	private FileManager fileManager;
	@Autowired
	private ServletContext servletContext;
	
	//list
	public List<MoimDTO> getList(MemberDTO memberDTO) throws Exception {
		return moimDAO.getList(memberDTO);
		
	}

	//add
	public int add(MoimDTO moimDTO, MultipartFile file) throws Exception {
		int result = moimDAO.add(moimDTO);
		result = moimDAO.moimHeadAdd(moimDTO);
		
		String path = servletContext.getRealPath("/resources/upload/moim");
			
		String fileName = fileManager.fileSave(path, file);
		
		MoimFileDTO moimFileDTO = new MoimFileDTO();
		moimFileDTO.setFileName(fileName);
		moimFileDTO.setOriName(file.getOriginalFilename());
		moimFileDTO.setMoimNum(moimDTO.getMoimNum());
		
		result = moimDAO.fileAdd(moimFileDTO);
		

		return result;
		
	}
	
	
	
}
