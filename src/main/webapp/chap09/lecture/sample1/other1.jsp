<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.container {
		display: flex;
	}
	.main {
		width: 80%;
	}
	.ad {
		width:20%;
		background-color: linen;
	}
	
</style>
</head>
<body>
	<div class="container">
		<div class="main">
			<h1>Lorem ipsum dolor.</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus molestiae exercitationem id earum aut doloribus blanditiis quae nostrum iure minima dignissimos minus autem excepturi accusantium corporis? Cumque voluptas sapiente tenetur!</p>
			<p>Ut sit eveniet eum consectetur quisquam sequi illo tenetur cum vel facere omnis deleniti deserunt a beatae in! Officiis pariatur consequuntur id voluptatem ex praesentium deleniti nulla consequatur ipsa perferendis.</p>
			<p>Voluptatibus error quas cupiditate temporibus culpa ex modi. Odit dolor minus totam recusandae iure adipisci quasi placeat labore provident dignissimos ducimus asperiores et voluptas necessitatibus expedita? Ducimus eum error amet?</p>
			<p>Perspiciatis nulla vel incidunt saepe nobis nostrum quam aperiam libero impedit sint sequi tempore accusantium dolorem distinctio ducimus! Sunt est aliquid ducimus beatae hic. Nulla perspiciatis cupiditate nisi labore nam?</p>
			<p>Quia animi maxime repellat sequi nam repudiandae error beatae omnis obcaecati unde odio harum earum id ex dicta. Commodi ullam ipsam voluptas expedita natus atque quo dolorem facilis maxime laudantium.</p>
		</div>
		<div class="ad">
			<jsp:include page="ad.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>