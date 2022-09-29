<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container{
	display: flex;
	}
	
	.main{
		width: 80%;
	}
	
	.ad{
		background-color: linen;
		width: 20%;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="main">
			<h1>other1콘텐츠</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum vel molestiae odit molestias voluptatem nihil ea voluptates suscipit maxime reprehenderit soluta natus neque aspernatur ex laudantium facere incidunt. Deleniti expedita.</p>
			<p>In delectus consequuntur fugit dolore nemo modi dolorum aliquid maiores dolores pariatur magnam odit iste blanditiis rerum quidem aperiam quas beatae sed provident error qui ullam soluta! Non minima porro!</p>
			<p>Aliquid enim provident est voluptatum laboriosam omnis ullam amet repellendus tenetur quaerat corporis saepe eaque ratione pariatur minus non nam quam accusantium cum dolore rerum natus deleniti at necessitatibus ut.</p>
			<p>Nostrum neque at exercitationem explicabo iure molestias hic numquam ea ut culpa id dolores cum obcaecati vero cupiditate impedit mollitia nulla eligendi aspernatur repellendus deserunt perferendis animi suscipit rem dolorum?</p>
			<p>Aliquam fugiat voluptatem doloremque omnis ducimus a exercitationem repellat suscipit corrupti alias architecto error obcaecati asperiores molestias nesciunt pariatur reiciendis fugit voluptatum laborum rerum dolorem iusto ullam quam distinctio totam!</p>
		</div>
		<div class="ad">
			<jsp:include page="ad.jsp"></jsp:include>
		</div>
			
	</div>
</body>
</html>