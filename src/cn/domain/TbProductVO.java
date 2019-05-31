package cn.domain;

public class TbProductVO {
	//id name,name,market_price
	private Integer id;
	private String name;
	private String mainName;
	private String branchName;
	private double marketPrice;
	//生成javabean
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMainName() {
		return mainName;
	}
	public void setMainName(String mainName) {
		this.mainName = mainName;
	}
	public String getBranchName() {
		return branchName;
	}
	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}
	public double getMarketPrice() {
		return marketPrice;
	}
	public void setMarketPrice(double marketPrice) {
		this.marketPrice = marketPrice;
	}
	@Override
	public String toString() {
		return "TbProductVO [id=" + id + ", name=" + name + ", mainName=" + mainName + ", branchName=" + branchName
				+ ", marketPrice=" + marketPrice + "]";
	}
	public TbProductVO(Integer id, String name, String mainName, String branchName, double marketPrice) {
		super();
		this.id = id;
		this.name = name;
		this.mainName = mainName;
		this.branchName = branchName;
		this.marketPrice = marketPrice;
	}
	public TbProductVO(){}
	
}
