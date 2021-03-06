package kctv.web.admin;

/**
 * <pre>
 * kctv.web.admin
 * UserParameter.java
 * </pre>
 * <pre>
 * 회원 정보 사용을 위한 모델 클래스
 * </pre>
 * 
 * @author : 서유진
 * @date   : 
 * @version: 
 */
public class UserParameter {
	int pageNo;
	int pageSize;
	int rowBegin;
	int rowEnd;

	String schType;
	String schText;
	
	String where;
	
	public UserParameter(){
		
	}
	
	public UserParameter(int pageNo, int pageSize, String schType, String schText, boolean isSecede){
		this.pageNo = pageNo;
		this.pageSize = pageSize;
		this.rowBegin = ((pageNo-1)*pageSize)+1;
		this.rowEnd = pageNo*pageSize;
		this.schType = schType;
		this.schText = schText.replace("'", "''");
		this.where = "";
		
		if(schType.equals("id")){
			if(isSecede)
				where += " where mmse_mmus_id like '%"+schText+"%'";
			else
				where += " where mmus_id like '%"+schText+"%'";
		}else if(schType.equals("name")){
			where += " where mmus_name like '%"+schText+"%'";
		}else if(schType.equals("address")){
			where += " where mmus_address1 like '%"+schText+"%' or mmus_address2 like '%"+schText+"%'";
		}else if(schType.equals("email")){
			where += " where mmus_email like '%"+schText+"%'";
		}
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getRowBegin() {
		return rowBegin;
	}

	public void setRowBegin(int rowBegin) {
		this.rowBegin = rowBegin;
	}

	public int getRowEnd() {
		return rowEnd;
	}

	public void setRowEnd(int rowEnd) {
		this.rowEnd = rowEnd;
	}

	public String getSchType() {
		return schType;
	}

	public void setSchType(String schType) {
		this.schType = schType;
	}

	public String getSchText() {
		return schText;
	}

	public void setSchText(String schText) {
		this.schText = schText;
	}

	public String getWhere() {
		return where;
	}

	public void setWhere(String where) {
		this.where = where;
	}
}
