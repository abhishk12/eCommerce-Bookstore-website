<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Book to Order</title>
</head>
<body>
	<div align="center">
		<h2>The book <i>${bookObj.title}</i>  has been added to your Order ID:<i>${orderObj.order_id}</i>  </h2>
		<br>
		<input type="button" value="Close" onclick="javascript:self.close();">
		
	</div>

	<script type="text/javascript">
		window.onunload = function(){
			window.opener.location.reload();
		}
	</script>
</body>
</html>