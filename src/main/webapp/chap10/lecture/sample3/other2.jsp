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
			<h1>other2콘텐츠</h1>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis sapiente possimus reprehenderit necessitatibus assumenda dolores vel doloribus eum tenetur maxime minus numquam id non sunt asperiores in cumque. Tenetur excepturi.</p>
				<p>Dolore eveniet expedita impedit voluptatum ab ullam corporis numquam quidem voluptas odio ratione nesciunt eos aspernatur officia modi consectetur vitae facilis ducimus eum omnis illo assumenda blanditiis iste ipsam ea!</p>
				<p>Necessitatibus fuga esse deserunt modi cupiditate minus nulla suscipit eum voluptatibus voluptates impedit temporibus libero eius laudantium dignissimos in ad dolor enim quis sapiente incidunt cum eos maiores sint quos?</p>
				<p>Animi doloribus suscipit incidunt eius ipsam ad dolores nostrum mollitia alias ratione aperiam possimus quae minus ex beatae laboriosam recusandae. Repudiandae nam autem beatae dolores vero dolorum perspiciatis nisi saepe.</p>
				<p>Neque velit iure excepturi modi recusandae repellendus laudantium voluptate corrupti quas eligendi nihil tempore consequuntur. Aspernatur et voluptatum consectetur sint recusandae accusantium nisi veniam velit numquam quisquam ea impedit quos.</p>
		</div>
		<div class="ad">
			<jsp:include page="ad.jsp"></jsp:include>
		</div>
	</div>

</body>
</html>