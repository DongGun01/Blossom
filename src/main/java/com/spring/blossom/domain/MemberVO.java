package com.spring.blossom.domain;

import java.util.Date;

public class MemberVO {

	private String memberId;
	private String memberPw;
	private String memberName;
	private String memberNickname;
	private String memberEmail;
	private String memberPhone;
	private Date memberCreatedDate;
	private String memberAddress;
	private int memberLevel;

	public MemberVO() {}
	
	public MemberVO(String memberId, String memberPw, String memberName, String memberNickname, String memberEmail,
			String memberPhone, Date memberCreatedDate, String memberAddress, int memberLevel) {
		super();
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.memberName = memberName;
		this.memberNickname = memberNickname;
		this.memberEmail = memberEmail;
		this.memberPhone = memberPhone;
		this.memberCreatedDate = memberCreatedDate;
		this.memberAddress = memberAddress;
		this.memberLevel = memberLevel;
	}




	public String getMemberId() {
		return memberId;
	}



	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}



	public String getMemberPw() {
		return memberPw;
	}



	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}



	public String getMemberName() {
		return memberName;
	}



	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}



	public String getMemberNickname() {
		return memberNickname;
	}



	public void setMemberNickname(String memberNickname) {
		this.memberNickname = memberNickname;
	}



	public String getMemberEmail() {
		return memberEmail;
	}



	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}



	public String getMemberPhone() {
		return memberPhone;
	}



	public void setMemberPhone(String memberPhone) {
		this.memberPhone = memberPhone;
	}



	public Date getMemberCreatedDate() {
		return memberCreatedDate;
	}



	public void setMemberCreatedDate(Date memberCreatedDate) {
		this.memberCreatedDate = memberCreatedDate;
	}



	public String getMemberAddress() {
		return memberAddress;
	}



	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}
	
	
	public int getMemberLevel() {
		return memberLevel;
	}



	public void setMemberLevel(int memberLevel) {
		this.memberLevel = memberLevel;
	}



	@Override
	public String toString() {
		return "MemberVO [memberId=" + memberId + ", memberPw=" + memberPw + ", memberName=" + memberName
				+ ", memberNickname=" + memberNickname + ", memberEmail=" + memberEmail + ", memberPhone=" + memberPhone
				+ ", memberCreatedDate=" + memberCreatedDate + ", memberAddress=" + memberAddress + ", memberLevel=" + memberLevel + "]";
	}
	
	
}
