package com.joinus.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class ClubsVo {

	private int club_no; 
	private String club_name; 
	private int club_capacity;
	private String club_content; 
	private String club_image; 
	private Date club_regdate;
	private String club_location;
	
}
