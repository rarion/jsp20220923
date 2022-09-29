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
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem quas aperiam expedita nam illo officiis illum repellendus fugiat et dolores iusto maiores eos eum culpa a libero non ipsam earum!</p>
			<p>Aspernatur iure ullam quaerat inventore reprehenderit nulla cupiditate pariatur voluptatum illo eos modi aliquam nisi non velit facilis laudantium atque deleniti adipisci itaque totam. Dolores sunt accusamus quibusdam provident repellat!</p>
			<p>Quod asperiores quos odit iure assumenda maxime pariatur ut officiis possimus incidunt fuga eaque accusantium impedit a tenetur totam doloremque! Harum molestiae atque fuga ab at dicta hic repudiandae quas.</p>
			<p>Quisquam quos officiis inventore qui cumque soluta saepe ullam excepturi necessitatibus eligendi modi tempore rem vero enim non quam cupiditate a harum voluptates id? Consequuntur animi autem ea explicabo beatae!</p>
			<p>Minus officia sit natus unde eius obcaecati numquam nostrum non debitis explicabo atque id quo ea reprehenderit veniam ipsum impedit tenetur harum eligendi corporis illo assumenda nesciunt quos nulla dolorum.</p>
		</div>
		<div class="ad">
			<jsp:include page="ad.jsp"></jsp:include>
		</div>
	</div>
</body>
</html>