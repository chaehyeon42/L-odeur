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
	
	//방 상세정보
	private String price;  //방가격
	private String people;  //수용인원
	private String structure;  //방구조
	private String bed;  //침대 수
	private String context;	//한줄설명
	private String explanation;	//소개말
	private String explanationadd; //소개말 추가
	
	//침실 사진 정보
	private String filename;	//이미지 파일 이름
	private String division;	//이미지 구분
	private String uploadPath;	//이미지 파일 경로
	private boolean image;		//이미지 파일인지 아닌지에 대한 정보
	
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
	//이미지에 관한 정보
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getDivision() {
		return division;
	}
	public void setDivision(String division) {
		this.division = division;
	}
	public String getUploadPath() {
		return uploadPath;
	}
	public void setUploadPath(String uploadPath) {
		this.uploadPath = uploadPath;
	}
	public boolean isImage() {
		return image;
	}
	public void setImage(boolean image) {
		this.image = image;
	}
	//방에 관한 정보
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
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public String getStructure() {
		return structure;
	}
	public void setStructure(String structure) {
		this.structure = structure;
	}
	public String getBed() {
		return bed;
	}
	public void setBed(String bed) {
		this.bed = bed;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	public String getExplanation() {
		return explanation;
	}
	public void setExplanation(String explanation) {
		this.explanation = explanation;
	}
	public String getExplanationadd() {
		return explanationadd;
	}
	public void setExplanationadd(String explanationadd) {
		this.explanationadd = explanationadd;
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
				+ checkin + ", checkout=" + checkout + ", room1=" + room1 + ", room2=" + room2 + ", price=" + price
				+ ", people=" + people + ", structure=" + structure + ", bed=" + bed + ", context=" + context
				+ ", explanation=" + explanation + ", explanationadd=" + explanationadd + ", filename=" + filename
				+ ", division=" + division + ", uploadPath=" + uploadPath + ", image=" + image + ", memberid="
				+ memberid + ", memberpw=" + memberpw + ", membername=" + membername + ", birthday=" + birthday
				+ ", addr=" + addr + ", phonenumber=" + phonenumber + ", addr2=" + addr2 + ", zipcode=" + zipcode + "]";
	}
	
	
}
