package doyoung.command;

public class Paging {
	public Paging() {}
	
	private String pageNum;
	private int startRow;
	private int endRow;
	private int currentPage;
	private int pageSize;
	private int startPage;
	private int endPage;
	private int count;
	private int number;
	private int pageBlock;
	private int pageCount;
	private int result;
	private int nextPage;
	private int previous;
	private String searchWord;
	
	
	public String getSearchWord() {
		return searchWord;
	}

	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}


	public Paging(String pageNum,int pageSize,int pageBlock,int count) {
		this.count = count;
		this.pageBlock = pageBlock;
		this.pageSize = pageSize;
		this.currentPage= Integer.parseInt(pageNum);  //5
		startRow =(currentPage*pageSize)-(pageSize-1); 
		endRow = startRow+pageSize-1;

		pageCount = count/pageSize;
		if(count % pageSize != 0) {
			pageCount = pageCount+1;
		}
		
		result = (int)(currentPage/pageBlock);
		if(currentPage % pageBlock == 0) {
			result=currentPage/pageBlock -1;
		}
		startPage =result*pageBlock+1;
		endPage =startPage+ pageBlock-1;
									//1					5
		if(endPage > pageCount) {
			endPage = pageCount;
		}
		if(endPage < pageCount) {
			nextPage = startPage + pageBlock;
		}
		if(startPage > pageBlock) {
			previous = startPage - pageBlock;
		}
		
	}
	
	public int getPrevious() {
		return previous;
	}

	public void setPrevious(int previous) {
		this.previous = previous;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public String getPageNum() {
		return pageNum;
	}
	public void setPageNum(String pageNum) {
		this.pageNum = pageNum;
	}

	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
	public int getEndRow() {
		return endRow;
	}
	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getPageBlock() {
		return pageBlock;
	}
	public void setPageBlock(int pageBlock) {
		this.pageBlock = pageBlock;
	}
	
	
	
}
