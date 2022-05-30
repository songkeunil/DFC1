package com.djplat.project.suit_board.vo;

public class Criteria {

	private int page; // 현재페이지번호
	private int perPageNum; // 페이지당 보여줄 게시글의 개수
	private int rowStart;
	private int rowEnd;

	// sql문에서 pageStart에 들어갈 값.
	// 게시글 몇번째 부터 시작할 지 결정
	public int getPageStart() {
		return (this.page - 1) * this.perPageNum;
	}

	public Criteria() { // 초기값 셋팅
		this.page = 1;
		this.perPageNum = 10;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
		} else {
			this.page = page;
		}
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
		} else {
			this.perPageNum = perPageNum;
		}

	}

	public int getRowStart() {
		rowStart = ((page - 1) * perPageNum) + 1;
		return rowStart;
	}

	public int getRowEnd() {
		rowEnd = rowStart + perPageNum - 1;
		return rowEnd;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + "" + ", rowStart=" + getRowStart()
				+ ", rowEnd=" + getRowEnd() + "]";
	}

}
