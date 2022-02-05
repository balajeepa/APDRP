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
        <form:form method="POST"    modelAttribute="vacantLandDataEntry"  >
            <h2 class="form-signin-heading" style="text-align: center;">Department Vacant Land (only)</h2>
           <logic:equal value="FORM_ENTRY" name="SHOW_TYPE">

				<div class="row">
					<div class="col-xl-12 col-xs-12 col-sm-3 col-md-4 col-lg-4">
						<div class="form-group">
						 <spring:bind path="survery_no">
							<label class="control-label " for="survery_no">Survey
								Number <span class="text-danger">*</span>
							</label>
							
							 <form:input type="text" path="survery_no" class="form-control" placeholder="survey no" autofocus="true"/> 
							 
							
							
							
						</div>
						
					</div>
					</spring:bind>
					
					
					<div class="col-xl-12 col-xs-12 col-sm-3 col-md-4 col-lg-4">
						<div class="form-group">
						 <spring:bind path="encumbrance_free_land_extend_scale">
							<label class="control-label " for="encumbrance_free_land_extend">Encumbrance
								free Land extend <span class="text-danger">*</span>
							</label>
								
							<div class="row">
								<div class="col-md-4">
								    
									<form:select type="text" path="encumbrance_free_land_extend_scale" class="form-control" placeholder="District Name" autofocus="true">
										<form:option value="0">---SELECT---</form:option>
										<form:option value="ACRES">ACRES</form:option>
										<form:option value="SQ. YARDS">SQ. YARDS</form:option>
									</form:select>
								</div>
								   </spring:bind>      
								<div class="col-md-4">
									<form:input type="text" path="encumbrance_free_land_extend_acres"  class="form-control numeric required" />
										(in Acres)
								</div>
								<div class="col-md-4">
									<form:input type="text" path="encumbrance_free_land_extend_sqyards" class="form-control numeric required"/>
										(in Sq. Yards)
								</div>
							</div>	
								
							<div class='encumbrance_free_land_extend'></div>
						</div>
					</div>
					<div class="col-xl-12 col-xs-12 col-sm-3 col-md-4 col-lg-4">
						<div class="form-group">
							<label class="control-label " for="disputed_land_extend">Disputed Land extend</label>
							<div class="row">
								<div class="col-md-4">
									<form:select type="text" class="form-control required" path="disputed_land_extend_scale">
										<form:option value="0">---SELECT---</form:option>
										<form:option value="ACRES">ACRES</form:option>
										<form:option value="SQ. YARDS">SQ. YARDS</form:option>
									</form:select>
								</div>
								<div class="col-md-4">
									<form:input type="text" path="disputed_land_extend_acres" class="form-control numeric"/>
										(in Acres)
								</div>
								<div class="col-md-4">
									<form:input type="text" path="disputed_land_extend_sqyards" class="form-control numeric"/>
										(in Sq. Yards)
								</div>
							</div>	
							<div class='disputed_land_extend'></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12 col-xs-12 col-sm-3 col-md-4 col-lg-4">
						<div class="form-group">
							<label class="control-label " for="total_land_extend">Total
								Land extend <span class="text-danger">*</span>
							</label>
							<div class="row">
								<div class="col-md-6">
									<form:input type="text" path="total_land_extend_acres" readonly="true" class="form-control numeric required" />
										(in Acres)
								</div>
								<div class="col-md-6">
									<form:input type="text" path="total_land_extend_sqyards" readonly="true" class="form-control numeric required" />
										(in Sq. Yards)
								</div>
							</div>
							<div class='total_land_extend'></div>
						</div>
					</div>
					<div class="col-xl-12 col-xs-12 col-sm-3 col-md-4 col-lg-4">
						<div class="form-group">
							<label class="control-label " for="dispute_nature">Nature
								of Dispute <span class="text-danger">*</span>
							</label>
							<form:select type="text" path="dispute_nature" class="form-control required">
								<form:option value="0">---SELECT---</form:option>
								<form:option value="Not Applicable">Not Applicable</form:option>
								<form:option value="Court Case">Court Case</form:option>
								<form:option value="Others">Others</form:option>
							</form:select>
							<div class="dispute_nature"></div>
						</div>
					</div>
					<div class="col-xl-12 col-xs-12 col-sm-3 col-md-4 col-lg-4">
						<div class="form-group">
							<label class="control-label " for="dispute_status">Present
								Status of Dispute <span class="text-danger">*</span>
							</label>
							<form:select type="text" path="dispute_status" class="form-control required">
								<form:option value="0">---SELECT---</form:option>
								<form:option value="Not Applicable">Not Applicable</form:option>
								<form:option value="Appeal">Appeal</form:option>
								<form:option value="Others">Others</form:option>
							</form:select>
							<div class="dispute_status"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12 col-xs-12 col-sm-8 col-md-4 col-lg-4">
						<div class="form-group">
							<label class="control-label " for="distance_from_rev_hq">Distance
								of this vacant land from the Revenue Division headquarters (in Kilometers)<span
								class="text-danger">*</span>
							</label>
							<form:input type="text" path="distance_from_rev_hq" maxlength="5" class="form-control numeric required"/>
							<div class="distance_from_rev_hq"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12 col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<h4>Location of Land</h4>
					</div>
				</div>
				<hr>
				<div class="row">
					<div class="col-xl-12 col-xs-12 col-sm-4 col-md-4 col-lg-4">
						<div class="form-group">
							<label class="control-label " for="revenue_division">Revenue
								Division <span class="text-danger">*</span>
							</label>
							<form:select type="text" path="revenue_division" class="form-control required">
								<form:option value="0">---SELECT---</form:option>
								
										<c:if test="${not empty revenuelist}">
			    						<c:forEach items="${revenuelist}" var="revenuelist">
			     							<form:option value="${revenuelist.revenue_district_id}">${revenuelist.revenue_district_name}</form:option>
										</c:forEach>
									</c:if>
									</form:select>
							<div class="revenue_division"></div>
						</div>
					</div>
					<div class="col-xl-12 col-xs-12 col-sm-4 col-md-4 col-lg-4">
						<div class="form-group">
							<label class="control-label " for="mandal">Mandal / Town
								<span class="text-danger">*</span>
							</label>
							<form:select type="text"  path="mandal" class="form-control required">
								<form:option value="0">---SELECT---</form:option>
								<c:if test="${not empty mandallist}">
			    						<c:forEach items="${mandallist}" var="mandallist">
			     							<form:option value="${mandallist.mandal_id}">${mandallist.mandal_name}</form:option>
										</c:forEach>
									</c:if>
									
							</form:select>
							<div class="mandal"></div>
						</div>
					</div>
					<div class="col-xl-12 col-xs-12 col-sm-4 col-md-4 col-lg-4">
						<div class="form-group">
							<label> Village</label>
							<form:select type="text" path="village" class="form-control required">
								<form:option value="0">---SELECT---</form:option>
								<c:if test="${not empty villagelist}">
			    						<c:forEach items="${villagelist}" var="villagelist">
			     							<form:option value="${villagelist.village_id}">${villagelist.village_name}</form:option>
										</c:forEach>
									</c:if>
							</form:select>
							<div class="village"></div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12 col-xs-12 col-sm-4 col-md-4 col-lg-4">
						<div class="form-group">
							<label class="control-label " for="parliament_constituency">Parliament
								Constituency <span class="text-danger">*</span>
							</label>
							<form:select type="text" path="parliament_constituency" class="form-control required">
								<form:option value="0">---SELECT---</form:option>
								<c:if test="${not empty parlimentlist}">
			    						<c:forEach items="${parlimentlist}" var="parlimentlist">
			     							<form:option value="${parlimentlist.parliament_id}">${parlimentlist.parliament_name}</form:option>
										</c:forEach>
									</c:if>
							</form:select>
							<div class="parliament_constituency"></div>
						</div>
					</div>
					<div class="col-xl-12 col-xs-12 col-sm-4 col-md-4 col-lg-4">
						<div class="form-group">
							<label class="control-label " for="assembly_constituency">Assembly
								Constituency <span class="text-danger">*</span>
							</label>
							<form:select type="text" path="assembly_constituency" class="form-control required">
								<form:option value="0">---SELECT---</form:option>
								<c:if test="${not empty assemblylist}">
			    						<c:forEach items="${assemblylist}" var="assemblylist">
			     							<form:option value="${assemblylist.assembly_id}">${assemblylist.assembly_name}</form:option>
										</c:forEach>
									</c:if>
							</form:select>
							<div class="assembly_constituency"></div>
						</div>
					</div>
				</div>
				

				<div class="row">
					<div class="col-xl-12 col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="table-responsive">
							<!-- <bean:define id="addPlanLen" value="1"></bean:define> -->
							<table class="table table-bordered table_style">
								<thead>
									<tr>
										<th>Sl.No.</th>
										<th>Plan (Upload only *.pdf, *.jpg, *.jpeg files with size less than 200MB)</th>
										<th>
											<button type="button" class="btn btn-sm btn-info"
												id="addPlanBtn">
												<i class="fa fa-plus" aria-hidden="true"></i>
											</button>
											<button type="button" class="btn btn-sm btn-danger"
												id="removePlanBtn">
												<i class="fa fa-minus" aria-hidden="true"></i>
											</button>
										</th>
									</tr>
								</thead>
								<tbody id="addPlanTbody">
									<logic:notEmpty name="Plan_uploads">
										<logic:iterate id="map" name="Plan_uploads" indexId="i">
											
									<div>
										</logic:iterate>
									</logic:notEmpty>
									<logic:empty name="Plan_uploads">
										<tr>
											<td>1.</td>
											<td><div>
									<input type="file" name="file" /> 
												<div class="plan1"></div></td>
											<td></td>
										</tr>
									</logic:empty>
								</tbody>
							</table>
							<%-- <form:hidden  path="addPlanLen"
								value="${addPlanLen }" /> --%>
						</div>
					</div>
					<div class="col-xl-12 col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="table-responsive">
							<!-- <bean:define id="addPhotoLen" value="1"></bean:define> -->
							<table class="table table-bordered table_style">
								<thead>
									<tr>
										<th>Sl.No.</th>
										<th>Photo(Upload only *.jpg, *.jpeg files with size less than 1MB)</th>
										<th>
											<button type="button" class="btn btn-sm btn-info"
												id="addPhotoBtn">
												<i class="fa fa-plus" aria-hidden="true"></i>
											</button>
											<button type="button" class="btn btn-sm btn-danger"
												id="removePhotoBtn">
												<i class="fa fa-minus" aria-hidden="true"></i>
											</button>
										</th>
									</tr>
								</thead>
								<tbody id="addPhotoTbody">
									<logic:notEmpty name="Photo_uploads">
										<logic:iterate id="map" name="Photo_uploads" indexId="j">
											<c:if test="${map.upload_type eq 'Photo' }">
												<tr>
													<td>${j+1}.</td>
													<td><a href="${map.upload_path}" target="_blank"
														class="pull-right">View</a> <form:hidden path="hid_photo${i+1}" value="${map.upload_path}" />
														<%-- <form:file path="photo${j+1}"
															class="form-control file-jgp-jpeg-1MB"></form:file> --%>
													</td>
													<td></td>
												</tr>
												<%-- <bean:define id="addPhotoLen" value="${j+1 }" /> --%>
											</c:if>
										</logic:iterate>
									</logic:notEmpty>
									<logic:empty name="Photo_uploads">
										<tr>
											<td>1.</td>
												<td><div>
									<input type="file" name="file" /> 
												<div class="plan1"></div></td>
												<div class="photo1"></div></td>
											<td></td>
										</tr>
									</logic:empty>
								</tbody>
							</table>
							<%-- <form:hidden path="addPhotoLen" value="${addPhotoLen }" /> --%>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12 col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="form-group">
							<label class="control-label " for="remarks">Remarks <span
								class="text-danger">*</span></label>
							<form:textarea  path="remarks"
								class="form-control required max-length-200"></form:textarea>
							<div class="remarks"></div>
						</div>
					</div>
				</div>
				<logic:notEmpty scope="session" name="role_id">
					<logic:equal value="7" scope="session" name="role_id">
						<div class="row">
							<div class="col-xl-12 col-xs-12 col-sm-6 col-md-6 col-lg-6">
								<div class="form-group">
									<label class="control-label " for="remarks">Revenue
										Divisional Officer Remarks <span class="text-danger">*</span>
									</label>
									<form:textarea path="remarks" class="form-control required max-length-200"></form:textarea>
									<div class="remarks"></div>
								</div>
							</div>
						</div>
					</logic:equal>
					</logic:notEmpty>
					</logic:equal>
					
				<div class="row">
					<div class="col-xl-12 col-xs-12 col-sm-12 col-md-12 col-lg-12">
						
							
								
								<logic:notEqual value="update" name='action_type'>
									<button type="button" class="btn btn-success pull-right"
										id="submitBtn">
										<i class="glyphicon glyphicon-floppy-saved"></i> <span>Submit</span>
									</button>
								</logic:notEqual>
							
						
					</div>
				</div>
					</form:form>
					</div>
					</body>
					</html>
					
		<script type="text/javascript" src="js/CommonFunction.js"></script>
	<script type="text/javascript">
	
	if ($("#reporttable"))
			$("#reporttable").DataTable({
				"lengthMenu" : [ [ 10, 25, 50, -1 ], [ 10, 25, 50, "All" ] ],
				"pageLength" : -1
			});
	
	
		function deleteData(id){
			if(confirm("Are you sure.Do you want to delete data ?")){
				$("#slno").val(id);
				$("#mode").val("deleteData");
				$("form")[0].submit();
			}
		}
	
		function showEdit(id){
			if(confirm("Are you sure.Do you want to edit data ?")){
				$("#slno").val(id);
				$("#mode").val("showEdit");
				$("form")[0].submit();
			}
			
		}
		
		function validateForm(){
			var flag = false;
			var ElementObjs = document.querySelectorAll(".required");
			for(obj of ElementObjs){
				obj.style.border = "1px solid #ced4da";
				$("."+id).text("");
				if(obj.nodeName == "INPUT" || obj.nodeName == "TEXTAREA"){
					if(obj.value == null || obj.value.trim() == ""){
						flag = true;
						obj.style.border = "1px solid red";
						var id = obj.id;
						$("."+id).text("Please fill this field").css({"color":"red"});
					}
				}else if(obj.nodeName == "SELECT"){
					var id = obj.id;
					
					if(id == "disputed_land_extend_scale"){
						$("#disputed_land_extend_acres").css({"border" : "1px solid #ced4da"});
						$("#disputed_land_extend_sqyards").css({"border" : "1px solid #ced4da"});
						
						if($("#disputed_land_extend_scale").val() == "ACRES"){
							if($("#disputed_land_extend_acres").val() == null || $("#disputed_land_extend_acres").val() == "" || $("#disputed_land_extend_acres").val().trim() == "0"){
								flag = true;
								$("#disputed_land_extend_acres").css({"border" : "1px solid red"});
								$(".disputed_land_extend_scale").text("Please fill this field").css({"color":"red"});
							}
						}else if($("#disputed_land_extend_scale").val() == "SQ. YARDS"){
							if($("#disputed_land_extend_sqyards").val() == null || $("#disputed_land_extend_sqyards").val() == "" || $("#disputed_land_extend_sqyards").val().trim() == "0"){
								flag = true;
								$("#disputed_land_extend_sqyards").css({"border" : "1px solid red"});
								$(".disputed_land_extend_sqyards").text("Please fill this field").css({"color":"red"});
							}
						}else{
							continue;
						}
					}else{
						if(obj.value == null || obj.value.trim() == "0"){
							flag = true;
							obj.style.border = "1px solid red";
							
							$("."+id).text("Please fill this field").css({"color":"red"});
						}
					}
				}
			}
			
			
			return flag;
		}
		function disputedLandAction(){
			
			
			if($("#disputed_land_extend_scale").val() == "0"){
				
				$("#disputed_land_extend_acres").val("0");
				$("#disputed_land_extend_sqyards").val("0");
				
					
				$('#dispute_nature').append("<option value='Not Applicable'>Not Applicable</option>");
				$('#dispute_status').append("<option value='Not Applicable'>Not Applicable</option>");
				
				$("#dispute_nature").val("Not Applicable").prop("disabled",true);
				$("#dispute_status").val("Not Applicable").prop("disabled",true);
				
				
			}else if($("#disputed_land_extend_scale").val()=="ACRES"){
				$("#disputed_land_extend_acres").attr("readonly", false);
				$("#disputed_land_extend_sqyards").attr("readonly", true);
				
				$("#dispute_nature").val("0").prop("disabled",false);
				$("#dispute_status").val("0").prop("disabled",false);
				
				$("#dispute_nature > option[value='Not Applicable']").remove();
				$("#dispute_status > option[value='Not Applicable']").remove();
				
			}else if($("#disputed_land_extend_scale").val()=="SQ. YARDS"){
				$("#disputed_land_extend_acres").attr("readonly", true);
				$("#disputed_land_extend_sqyards").attr("readonly", false);
				
				$("#dispute_nature").val("0").prop("disabled",false);
				$("#dispute_status").val("0").prop("disabled",false);
				
				$("#dispute_nature > option[value='Not Applicable']").remove();
				$("#dispute_status > option[value='Not Applicable']").remove();
			}
			
			changeTotalLandExtent();
		};disputedLandAction();
		$(document).ready(function(){
			$(".file-pdf-jgp-jpeg-200MB").change(function(){
				validateFileNew(this,['pdf','jpg','jpeg'], "209715200");
			});
			$(".file-jgp-jpeg-1MB").change(function(){
				validateFileNew(this,['jpg','jpeg'], "1048576");
			});
			
		
			$(".numeric").keyup(function(){
    			var str = $(this).val()
    			if(str != null){
    				$(this).val(str.replace(/[^0-9.]/g,''));
    				var temp = str.split(".")[1];
    				if(temp != null && temp != undefined){
    					if(temp.length > 2){
    						alert("Decimals not allowed more than 2 digits");
    						$(this).val("");
    					}
    				}
    			}
    		});
    		
    		$(".percentage").keyup(function(){
    			if(parseFloat($(this).val()) > 100){
    				alert("Percentage cannot exceed 100.");
    				$(this).val("");
    			}
    		});
    		$(".alphanumeric-space").keyup(function(){
    			if($(this).val() != null){
    				$(this).val($(this).val().replace(/[^a-z0-9 ]/gi, ''));
    			}
    		});
			
			$(".alphanumeric").keyup(function(){
    			if($(this).val() != null){
    				$(this).val($(this).val().replace(/[^a-z0-9]/gi, ''));
    			}
    		});
			
			$("textarea").keypress(function(e){
				if($(this).val() != null && $(this).val().length > 200){
    				alert("Not Allowed more tha 200 character.");
    				e.preventDefault();
    				return false;
    			}
			}).keyup(function(e){
				if($(this).val() != null){
    				$(this).val($(this).val().replace(/[^a-z0-9().,//\- ]/gi, ''));
    			}
			});
			
			
			$("#encumbrance_free_land_extend_scale").change(function(){
				$("#encumbrance_free_land_extend_acres").val("0");
				$("#encumbrance_free_land_extend_sqyards").val("0");
				if($("#encumbrance_free_land_extend_scale").val()=="ACRES"){
					$("#encumbrance_free_land_extend_acres").attr("readonly", false);
					$("#encumbrance_free_land_extend_sqyards").attr("readonly", true);
				}
				if($("#encumbrance_free_land_extend_scale").val()=="SQ. YARDS"){
					$("#encumbrance_free_land_extend_acres").attr("readonly", true);
					$("#encumbrance_free_land_extend_sqyards").attr("readonly", false);
				}
				changeTotalLandExtent();
			});
			$("#encumbrance_free_land_extend_acres").change(function(){
				if($("#encumbrance_free_land_extend_scale").val()=="ACRES"){
					areaConversion("ACRES" ,"SQ. YARDS", "encumbrance_free_land_extend_acres", "encumbrance_free_land_extend_sqyards" );	
				}
				changeTotalLandExtent();
			});
			$("#encumbrance_free_land_extend_sqyards").change(function(){
				if($("#encumbrance_free_land_extend_scale").val()=="SQ. YARDS"){
					areaConversion("SQ. YARDS", "ACRES" , "encumbrance_free_land_extend_sqyards" , "encumbrance_free_land_extend_acres");
				}
				changeTotalLandExtent();
			});
			
			
			
			$("#disputed_land_extend_scale").change(disputedLandAction);
			$("#disputed_land_extend_acres").change(function(){
				if($("#disputed_land_extend_scale").val()=="ACRES"){
					areaConversion("ACRES" ,"SQ. YARDS", "disputed_land_extend_acres", "disputed_land_extend_sqyards" );	
				}
				changeTotalLandExtent();
			});
			$("#disputed_land_extend_sqyards").change(function(){
				if($("#disputed_land_extend_scale").val()=="SQ. YARDS"){
					areaConversion("SQ. YARDS", "ACRES" , "disputed_land_extend_sqyards" , "disputed_land_extend_acres");
				}
				changeTotalLandExtent();
			});
			
			
		
			
			$("#AddBtn").click(function(){
				$("#mode").val("AddNew");
				$("form")[0].submit();
			});
			$("#submitBtn").click(function(){
				if(validateForm() != true){
					$("#dispute_nature").prop("disabled",false);
					$("#dispute_status").prop("disabled",false);
					$("#mode").val("saveData");
					$("form")[0].submit();				
				}
			});
			$("#updateBtn").click(function(){
				if(validateForm() != true){
					$("#dispute_nature").prop("disabled",false);
					$("#dispute_status").prop("disabled",false);
					$("#mode").val("updateData");
					$("form")[0].submit();
				}
			})
			$("#mandal").change(function(){
				var data = {
					mode : "AjaxAction",
					mandal : $(this).val(),
					getType : "parliament"
				}
				$.post("AjaxModels.do",data).done(function(res){
					$("#parliament_constituency").html(res);
				}).fail(function(exc){
					alert("Error Occured.Please Try Again");
				});
				
				data = {
					mode : "AjaxAction",
					mandal : $(this).val(),
					getType : "assembly"
				}
				$.post("AjaxModels.do",data).done(function(res){
					$("#assembly_constituency").html(res);
				}).fail(function(exc){
					alert("Error Occured.Please Try Again");
				});
				
    			$.post("AjaxModels.do",{mandal : $("#mandal").val(),getType : "village"}).done(function(res){
    				$("#village").html(res);
    			}).fail(function(){
    				alert("Error Occured.")
    			});
				
				
			});
			
			$("#addPlanBtn").click(function(){
				var tr_len = $("#addPlanTbody tr").length;
				var tr = "<tr>"
							+"	<td>"+(tr_len+1)+".</td>"
							+"	<td>"
							+"		<input type='file' name='dynaForm(plan"+(tr_len+1)+")' id='plan"+(tr_len+1)+"' class='form-control file-pdf-jgp-jpeg-200MB required'><div class='photo"+(tr_len+1)+"'></div>"
							+"	</td>"
							+"<td></td>"
							+"</tr>";
				
				$("#addPlanTbody").append(tr);
				$("#addPlanLen").val((tr_len+1));
			});
			
			$("#addPhotoBtn").click(function(){
				var tr_len = $("#addPhotoTbody tr").length;
				var tr = "<tr>"
							+"	<td>"+(tr_len+1)+".</td>"
							+"	<td>"
							+"		<input type='file' name='dynaForm(photo"+(tr_len+1)+")' id='photo"+(tr_len+1)+"' class='form-control file-jgp-jpeg-1MB required'><div class='photo"+(tr_len+1)+"'></div>"
							+"	</td><td></td>"
							+"</tr>";
				
				$("#addPhotoTbody").append(tr);
				$("#addPhotoLen").val((tr_len+1));
			});
			
			
			$("#removePlanBtn").click(function(){
				var tr_len = $("#addPlanTbody tr").length;
				if(tr_len > 1){
					$("#addPlanTbody tr:last").remove();
				}
				$("#addPlanLen").val($("#addPlanTbody tr").length);
			
			});
			$("#removePhotoBtn").click(function(){
				var tr_len = $("#addPhotoTbody tr").length;
				if(tr_len > 1){
					$("#addPhotoTbody tr:last").remove();
				}
				$("#addPhotoLen").val($("#addPhotoTbody tr").length);
			
			});
			
		});
		
		
		function areaConversion(cnvrtFrm, cnvrtTo , varObj1, varObj2){
			if(cnvrtFrm=="ACRES" && cnvrtTo=="SQ. YARDS"){
					if(parseInt($("#"+varObj1).val()) > 0)
						$("#"+varObj2).val($("#"+varObj1).val() * 4840);
			}
			if(cnvrtFrm=="SQ. YARDS" && cnvrtTo=="ACRES"){
				if(parseInt($("#"+varObj1).val()) > 0)
						$("#"+varObj2).val(Math.round(($("#"+varObj1).val() / 4840),2));
						//$("#total_land_extend_acres").val(Math.round(($("#total_land_extend_sqyards").val() / 4840) , 2));
			}	
		}
		function changeTotalLandExtent(){
		
		
		var tot1 = $("#encumbrance_free_land_extend_acres").val() !=null && $("#encumbrance_free_land_extend_acres").val()!="" ? parseInt($("#encumbrance_free_land_extend_acres").val()) : 0;
		var tot2 = $("#disputed_land_extend_acres").val() !=null && $("#disputed_land_extend_acres").val()!="" ? parseInt($("#disputed_land_extend_acres").val()) : 0;
		var tot3 = $("#encumbrance_free_land_extend_sqyards").val() !=null && $("#encumbrance_free_land_extend_sqyards").val()!="" ? parseInt($("#encumbrance_free_land_extend_sqyards").val()) : 0;
		var tot4 = $("#disputed_land_extend_sqyards").val() !=null && $("#disputed_land_extend_sqyards").val()!="" ? parseInt($("#disputed_land_extend_sqyards").val()) : 0;
		
			$("#total_land_extend_acres").val(tot1 + tot2);
			$("#total_land_extend_sqyards").val(tot3 + tot4);
		}
		
	</script>
				