package com.joinus.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.joinus.domain.ClubBoardsVo;
import com.joinus.domain.ClubGradesVo;
import com.joinus.domain.ClubMembersVo;
import com.joinus.domain.ClubTotalBean;
import com.joinus.domain.ClubsVo;
import com.joinus.domain.InterestDetailsVo;
import com.joinus.domain.InterestsVo;
import com.joinus.domain.MembersVo;
import com.joinus.persistence.ClubDao;

@Service
public class ClubServiceImpl implements ClubService{
	
	private static final Logger log = LoggerFactory.getLogger(ClubServiceImpl.class);
	
	@Inject
	private ClubDao dao;
	

	@Override
	public List<ClubTotalBean> clubMemberListAll(int club_no) {
		
		log.info("clubMemberListAll() 호출");
		
		return dao.clubMemberList(club_no);
		
	}


	@Override
	public List<ClubTotalBean> clubList(int interest_no) {
		
		log.info("clubList() 호출");
		
		return dao.clubList(interest_no);
	}


	@Override
	public List<ClubTotalBean> clubList() {
		
		log.info("clubList() 호출");
		
		return dao.clubList();
	}



	

	@Override
	public void writeBoard(ClubBoardsVo vo) {
		dao.writeBoard(vo);
		
	}

//	@Override
//	public List<ClubBoardVo> getBoardListAll(Integer club_no) {
//		return dao.getBoardListAll(club_no);
//	}
	
	
	
	
	
	//=========================강성민========================
	
		//회원정보 가져오기
		@Override
		public MembersVo getMember(Integer num) {
			return dao.getMember(num);
		}
		//회원관심사 가져오기
		@Override
		public InterestsVo getMemberInterest(Integer num) {
			return dao.interest(num);
		}
		//회원이 선택한 관심사의 세부관심사리스트 가져오기
		@Override
		public List<InterestDetailsVo> getDetailName(Integer num) {
			return dao.getDetailName(num);
		}
	
		//회원이 입력한 클럽정보 저장
		@Override
		public void newClub(ClubsVo vo) {
			dao.newClub(vo);
		}
		//회원이 선택한 관심사 넘버값 가져오기
		@Override
		public InterestDetailsVo getInterestNo(String name) {
			return dao.getInterestNo(name);
		}
		//회원이 입력한 클럽관심사 저장하기
		@Override
		public void newClubInterest(Integer club_no, Integer interest_no, Integer interest_detail_no) {
			dao.newClubInterest(club_no, interest_no, interest_detail_no);
		}
		
		//모임가입하기
		@Override
		public void join(ClubMembersVo members) {
			dao.join(members);
		}
		//모임 정보 가져오기
		@Override
		public ClubsVo getClubInfo(Integer num) {
			return dao.getClubInfo(num);
		}
		//모임 회원 정보 가져오기
		@Override
		public List<ClubMembersVo> getClubMembers(Integer num) {
			return dao.getClubMembers(num);
		}
		//모임별점주기
		@Override
		public void clubGrade(ClubGradesVo vo) {
			dao.clubGrade(vo);
		}
		//모임 별점 정보 가져오기
		@Override
		public List<ClubGradesVo> getClubGrade(Integer num) {
			return dao.getClubGrade(num);
		}
		//모임 별점 평균값, 참여자 수 가져오기
		@Override
		public List<Map<String, Integer>> getClubAvgCnt(Integer num) {
			return dao.getClubAvgCnt(num);
		}
	
		
	
}
