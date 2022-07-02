package com.joinus.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.joinus.domain.ClubMemberVo;
import com.joinus.domain.ClubTotalBean;

@Service
public interface ClubService {

	//클럽 회원 리스트
	public List<ClubTotalBean> clubMemberListAll(int club_no);

	//클럽 리스트
	public List<ClubTotalBean> clubList(int interest_no);

	public List<ClubTotalBean> clubList();
	
	

}
