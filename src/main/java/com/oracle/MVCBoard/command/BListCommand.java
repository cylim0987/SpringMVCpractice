package com.oracle.MVCBoard.command;

import java.util.ArrayList;

import org.springframework.ui.Model;

import com.oracle.MVCBoard.dao.BDao;
import com.oracle.MVCBoard.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void execute(Model model) {
		BDao dao = new BDao();
		ArrayList<BDto> dtos = dao.list();  //ArrayList를 <BDto>형태로 가져온다... 뒤에 list의 리턴형을 Arraylist로 돌려준다.
	
		System.out.println("BListCommand dtos.size()--> " + dtos.size());

		model.addAttribute("list", dtos);
	
	}

}
