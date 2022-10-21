package org.ch.model;

public class MainVO {
	//예약시 정보
	private int bno;		//예약 번호
	private int adult;		//어른 수
	private int kid;		//아이 수
	private String roomname;	//방 이름
	private String checkin;		//체크인 날짜
	private String checkout;	//체크아웃 날짜
	private String room1;	//방 선택
	private String room2;	//방 선택 후 확인	
	
	//로그인 정보
	private String memberid;	//아이디
	private String memberpw;	//비밀번호
	private String membername;	//이름(회원가입 한 사람) 
	private String birthday;	//생일
	private String addr;		//도로명주소
	private int phonenumber;	//핸드폰 번호
	
	//회원가입
	private String addr2; 	//상세주소
	private String zipcode; 	//우편번호

	
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getKid() {
		return kid;
	}
	public void setKid(int kid) {
		this.kid = kid;
	}
	public String getRoomname() {
		return roomname;
	}
	public void setRoomname(String roomname) {
		this.roomname = roomname;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	

	public String getRoom1() {
		return room1;
	}
	public void setRoom1(String room1) {
		this.room1 = room1;
	}
	public String getRoom2() {
		return room2;
	}
	public void setRoom2(String room2) {
		this.room2 = room2;
	}
	
	//로그인때 사용
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
	public String getMemberpw() {
		return memberpw;
	}
	public void setMemberpw(String memberpw) {
		this.memberpw = memberpw;
	}
	public String getMembername() {
		return membername;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public int getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(int phonenumber) {
		this.phonenumber = phonenumber;
	}
	
	//회원가입
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	
	
	@Override
	public String toString() {
		return "MainVO [bno=" + bno + ", adult=" + adult + ", kid=" + kid + ", roomname=" + roomname + ", checkin="
				+ checkin + ", checkout=" + checkout + ", room1=" + room1 + ", room2=" + room2 + ", memberid="
				+ memberid + ", memberpw=" + memberpw + ", membername=" + membername + ", birthday=" + birthday
				+ ", addr=" + addr + ", phonenumber=" + phonenumber + ", addr2=" + addr2 + ", zipcode=" + zipcode + "]";
	}
	
	
}
