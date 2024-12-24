<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<MemberMoneyVO> list = new ArrayList<MemberMoneyVO>();
	MemberDao dao = new MemberDao();
	list = dao.memberMoneyList();
%>
<jsp:include page="/master/header.jsp"></jsp:include>
<section>
	<h2>회원매출조회</h2>
<%
	if(!list.isEmpty()) {
%>
	<table>
		<tr>
			<td>회원번호</td>
			<td>회원성명</td>
			<td>고객등급</td>
			<td>매출</td>
		</tr>
<%
		for(MemberMoneyVO member : list) {
%>
	<tr>
		<td><%=member.getCustno() %></td>
		<td><%=member.getCustname() %></td>
		<td><%=member.getGrade() %></td>
		<td><%=member.getPrice() %></td>
	</tr>
<%		} %>
	</table>
<%	} else{
	out.print("<h3 style='text-align:center'>등록된 매출 정보가 없습니다</h3>");
}
	
%>
</section>
<jsp:include page="/master/footer.jsp"></jsp:include>

