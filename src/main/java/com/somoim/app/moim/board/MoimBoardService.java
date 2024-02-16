package com.somoim.app.moim.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.somoim.app.moim.MoimDTO;
import com.somoim.app.util.FileManager;
import com.somoim.app.util.Pager;


@Service
public class MoimBoardService {
	@Autowired
	private MoimBoardDAO moimBoardDAO;
	@Autowired
	private FileManager fileManager;
	@Autowired
	private ServletContext servletContext;
	
	//list
	public List<Object> list(Pager pager, MoimDTO moimDTO) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		pager.makeRow();
		map.put("pager", pager);
		map.put("moimDTO", moimDTO);

		return moimBoardDAO.list(map);
	}
	
	//add
	public int add(MoimBoardDTO boardDTO, MultipartFile[] file) throws Exception{
		//글 등록
		int result = moimBoardDAO.add(boardDTO);
		//파일 저장
		String path = servletContext.getRealPath("/resources/upload/moimBoard");
		
		for(MultipartFile f: file) {
			
			if(f.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.fileSave(path, f);
			
			MoimBoardFileDTO boardFileDTO = new MoimBoardFileDTO();
			boardFileDTO.setFileName(fileName);
			boardFileDTO.setOriName(f.getOriginalFilename());
			boardFileDTO.setBoardNum(boardDTO.getBoardNum());
			result = moimBoardDAO.fileAdd(boardFileDTO);
		}
		
		return result;
	}
	

}
