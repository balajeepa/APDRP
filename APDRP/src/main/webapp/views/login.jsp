<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script type="text/javascript" src="<%=basePath%>js/md5.js"></script>


<section class="carousal">
		<div class="container" style="background:#f5faff;padding-top:10px;">
			<div class="modal-dialog modal-login">
				<div class="modal-content">
					${msg }
					<div class="modal-header">
						<h4 class="modal-title">Login</h4>
					</div>
					<div class="modal-body">
						<form:form method="POST" action="/loginCheck" modelAttribute="loginbean">
						<%-- <form:hidden property="mode" styleId="mode"/> --%>
							<div class="form-group">
								 <form:input type="text" path="username" class="form-control" placeholder="username" autofocus="true"/>
							</div>
							<div class="form-group">
								 <form:input type="password" path="password" class="form-control" placeholder="password" autofocus="true"/>
							</div>
							<div class="form-group">
								<input type="button" id="LoginFormBtn"  class="btn btn-primary btn-block btn-lg" value="Sign in" onclick = "return loginUser1()" />
							</div>
						
						</form:form>
						<!-- <p class="hint-text small">
							<a href="#">Forgot Your Password?</a>
						</p> -->
					</div>
				</div>
			</div>

		</div>
	</section>
 
	<!-- <table>
		<tr>
			<td><label>User Name</label></td>
			<td><input type="text" name="username" /></td>
		</tr>
		<tr>
			<td><label>Password</label></td>
			<td><input type="password" name="password" id="password"/></td>
		</tr>
		<tr>
			<td colspan="2"><input type="button" value="Login" onclick = "return loginUser1()" /></td>
		</tr>
	</table> -->

<script>
function loginUser1() {
				document.forms[0].password.value = hex_md5(document.forms[0].password.value);
				document.forms[0].action = "/loginCheck";
				document.forms[0].method = "POST";
				document.forms[0].submit();
			
		}
</script>