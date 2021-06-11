package proj21_shop.dto.order;

public class Standard {
	private int page;
	private int perPageNum;
	private OrderDTO oOp;

	public Standard() {
		this.page = 1;
		this.perPageNum = 10;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		if (page <= 0) {
			this.page = 1;
			return;
		}
		this.page = page;
	}

	public int getPerPageNum() {
		return perPageNum;
	}

	public void setPerPageNum(int perPageNum) {
		if (perPageNum <= 0 || perPageNum > 100) {
			this.perPageNum = 10;
			return;
		}

		this.perPageNum = perPageNum;
	}

	public OrderDTO getoOp() {
		return oOp;
	}

	public void setoOp(OrderDTO oOp) {
		this.oOp = oOp;
	}

	public int getPageStart() {
		return (this.page - 1) * perPageNum;

	}

	@Override
	public String toString() {
		return String.format("Standard [page=%s, perPageNum=%s]", page, perPageNum);
	}
}
