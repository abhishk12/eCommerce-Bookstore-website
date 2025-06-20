<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp"></jsp:include>

	<br>
	
	<h2>User Management</h2>
	<a href="user_form.jsp">Create New User</a>
	<hr width="60%">
	
	<c:if test="${newUserMessage != null}">
		<div align="center">
			<p style="color:DarkGreen;"><i>${newUserMessage}</i></p>
		</div>
	</c:if>
	
	
	
	<div align="center">
		<table border="1" cellpadding="5">
			<tr>
				<th>Index</th>
				<th>ID</th>
				<th>Email</th>
				<th>Full Name</th>
				<th>Action</th>
			</tr>
			<c:forEach var="user" items="${listUsers}" varStatus="statu">
				<tr>
					<td>${statu.count}</td>
					<td>${user.user_id}</td>
					<td>${user.email}</td>
					<td>${user.full_name}</td>
					<td>
						<a href="edit_user?id=${user.user_id}">Edit</a> | <a href="javascript:confirmDelete(${user.user_id})">Delete</a>
					</td>
				</tr>
			</c:forEach>
			
		</table>
	</div>
	
	<hr width="60%">
	<br><br>

<script type="text/javascript">
	function confirmDelete(userId){
		if (confirm("Are you sure you want to delete user with Id: " + userId + " ?")){
			window.location = "delete_user?id=" + userId;
		}
	}	
</script>	
<jsp:include page="footer.jsp"></jsp:include>