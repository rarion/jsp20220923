package jsp20220923.chap07;

public class Book {

	private String title;
	private Integer price;
	private String author;
	public Book() {
		
	}
	
	public Book(String title, Integer price, String author) {
		super();
		this.title = title;
		this.price = price;
		this.author = author;
	}

	public Book(String title, Integer price) {
		super();
		this.title = title;
		this.price = price;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	public String getAuthor() {
		return author;
	}
	
	public void setAuthor(String author) {
		this.author = author;
	}
	


}
