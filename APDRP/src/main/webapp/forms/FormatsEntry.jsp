<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <title>Create an account</title>
	  <link rel="stylesheet" href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css">
	  <link rel="stylesheet" href="/webjars/bootstrap-datepicker/1.0.1/css/datepicker.css">
 <script>
 </script>
 
  <body>
    <div class="container">
        <form:form method="POST"    modelAttribute="formateone"  >
            <h2 class="form-signin-heading" style="text-align: center;">Legal Aspects</h2>
             <div id="collapse6" class="panel-collapse collapse in"  style="text-align: center;">
			<div class="row">
				<div class="col-md-4">
				<div class="form-group" >
		            <spring:bind path="rule_name">
		            	<label class="head_label">Name of the Act/Rule/Regulation/G.O<span class="color" style="color: red;float:right;">*</span></label>
		                <div class="form-group ${status.error ? 'has-error' : ''}">
		                    <form:select type="text" path="rule_name" class="form-control" placeholder="District Name" autofocus="true"  >
		                    	<form:option value="0">SELECT</form:option>
										<c:if test="${not empty actslist}">
			    						<c:forEach items="${actslist}" var="actslist">
			     							<form:option value="${actslist.id}">"${actslist.act}"</form:option>
										</c:forEach>
									</c:if>
		        					
		                    </form:select>
		                    
	 
		                    
		             </div>
		             </spring:bind>         
		                    
		                </div>
		           
	 			</div>
	 		   
	 			<div class="col-md-4">
				<div class="form-group" >
		  			<spring:bind path="sections">
		  				<label class="head_label">Sections to be Deleted<span class="color" style="color: red;float:right;">*</span></label>
		                <div class="form-group ${status.error ? 'has-error' : ''}">
		                     <form:select type="text" path="sections" class="form-control" placeholder="Sections to be Deleted" autofocus="true"  >
		                 
		                    	
		                    	<form:option value="0">SELECT</form:option>
										<form:option value="YES">YES</form:option>
										<form:option value="NO">NO</form:option>
		        					
		                    </form:select>
		                 
		                </div>
		            </spring:bind>
	 			</div>
	 			</div>
	 			 </div>
	 			 </div>
	 			   <div id="collapse6" class="panel-collapse collapse in"  style="text-align: center;">
			<div class="row"> 
	 			<div class="col-md-4">
				<div class="form-group" >
		   			<spring:bind path="reasons_for_deletion">
		   				<label class="head_label">Provisions to be Incorporated<span class="color" style="color: red;float:right;">*</span></label>
		                <div class="form-group ${status.error ? 'has-error' : ''}">
		                    <form:select type="text" path="reasons_for_deletion" class="form-control" placeholder="reasons_for_deletion" autofocus="true" id ="panchayatID">
		                    	<form:option value="0">SELECT</form:option>
										<form:option value="YES">YES</form:option>
										<form:option value="NO">NO</form:option>
		                    </form:select>
		                   
		                </div>
		               
		                </spring:bind>
		               </div>
		               </div>  
		                <div class="col-md-4">
				<div class="form-group" >
		   			<spring:bind path="provisions">
		   				<label class="head_label">Repeal, in toto<span class="color" style="color: red;float:right;">*</span></label>
		                <div class="form-group ${status.error ? 'has-error' : ''}">
		                    <form:select type="text" path="provisions" class="form-control" placeholder="provisions Name" autofocus="true" id ="provisionsID">
		                    	<form:option value="0">SELECT</form:option>
										<form:option value="YES">YES</form:option>
										<form:option value="NO">NO</form:option>
		                    </form:select>
		                    
		                </div>
		            </spring:bind>
		         </div>
		         </div>
            </div>  
	 		</div> 
	 		 <button class="btn btn-lg btn-primary btn-block" type="submit">Save</button>
            </form:form>
            </div>
            