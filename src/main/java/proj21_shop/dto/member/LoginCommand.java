package proj21_shop.dto.member;

public class LoginCommand {
	private String id;
	private String password;
	private boolean rememberId;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isRememberId() {
		return rememberId;
	}

	public void setRememberId(boolean rememberId) {
		this.rememberId = rememberId;
	}

	@Override
	public String toString() {
		return String.format("LoginCommand [id=%s, password=%s, rememberId=%s]", id, password, rememberId);
	}

}
