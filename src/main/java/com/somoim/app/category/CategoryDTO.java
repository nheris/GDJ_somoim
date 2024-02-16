package com.somoim.app.category;

import java.util.List;


import com.somoim.app.moim.MoimDTO;
import com.somoim.app.moim.MoimFileDTO;

public class CategoryDTO extends MoimDTO {

	
	private List<MoimFileDTO> fileDTOs;

	public List<MoimFileDTO> getFileDTOs() {
		return fileDTOs;
	}

	public void setFileDTOs(List<MoimFileDTO> fileDTOs) {
		this.fileDTOs = fileDTOs;
	}
}
