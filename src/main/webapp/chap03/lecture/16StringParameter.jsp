<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>스트링 파라미터를 다른 타입으로 변경</h1>
	<form action="">
		영어 : <input type="text" name="Eng"> <br>
		수학 : <input type="text" name="Math"> <br>
		국어 : <input type="text" name="Kor"> <br>
	
		<%-- submit button  value 속성 : 버튼에 표시되는 내용--%>	
		<input type="submit" value="평균구하기"> <br>
	
	</form>
	<%-- 영어, 수학, 국어 점수의 평균 구하기 --%>
	
	<%
	String Eng = request.getParameter("Eng");
	String Math = request.getParameter("Math");
	String Kor= request.getParameter("Kor");
	
	Integer eng = 0;
	Integer math = 0;
	Integer kor = 0;
	
	if ( Eng != null){
		eng = Integer.valueOf(Eng);
	}
	if ( Math != null){
		math = Integer.valueOf(Math);
	}
	if ( Kor != null){
		kor = Integer.valueOf(Kor);
	}
	
	double avg = (eng + math + kor) / 3.0;
	%>
	
	<p>평균점수는 <%= avg %>점 입니다.</p>


</body>
</html>