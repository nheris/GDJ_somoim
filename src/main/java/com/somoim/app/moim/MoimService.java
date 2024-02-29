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

		
		if(file.isEmpty()) {
			
			MoimFileDTO moimFileDTO = new MoimFileDTO();
			moimFileDTO.setOriName(file.getOriginalFilename());
			moimFileDTO.setMoimNum(moimDTO.getMoimNum());

			result = moimDAO.fileAdd(moimFileDTO);
			
			return result;
		}

		String fileName = fileManager.fileSave(path, file);

		MoimFileDTO moimFileDTO = new MoimFileDTO();
		moimFileDTO.setFileName(fileName);
		moimFileDTO.setOriName(file.getOriginalFilename());
		moimFileDTO.setMoimNum(moimDTO.getMoimNum());

		result = moimDAO.fileAdd(moimFileDTO);


		return result;

	}
	
	//delete
	public int delete(MoimDTO moimDTO) throws Exception {
		//모임사진 삭제
		MoimFileDTO moimFileDTO = moimDAO.file(moimDTO);
		String path = servletContext.getRealPath("/resources/upload/moim");
		fileManager.fileDelete(path, moimFileDTO.getFileName());

		//모임삭제
		return moimDAO.delete(moimDTO);
	}

	//update
	public MoimDTO getInfo(MoimDTO moimDTO) throws Exception {
		return moimDAO.getInfo(moimDTO);
	}

	public int update(MoimDTO moimDTO, MultipartFile file) throws Exception {
		int result = moimDAO.update(moimDTO);
		
		String path = servletContext.getRealPath("/resources/upload/moim");

		String fileName = fileManager.fileSave(path, file);

		MoimFileDTO moimFileDTO = new MoimFileDTO();
		moimFileDTO.setFileName(fileName);
		moimFileDTO.setOriName(file.getOriginalFilename());
		moimFileDTO.setMoimNum(moimDTO.getMoimNum());

		result = moimDAO.fileUpdate(moimFileDTO);

		return result;
	}

	
	
}
