<%-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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
								<!-- <logic:notEmpty name="CommonForm"
									property="dynaForm(VillagesList)">
									<html:optionsCollection name="CommonForm"
										property="dynaForm(VillagesList)" />
								</logic:notEmpty> -->
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
								<!-- <logic:notEmpty name="CommonForm"
									property="dynaForm(parialmentsList)">
									<html:optionsCollection name="CommonForm"
										property="dynaForm(parialmentsList)" />
								</logic:notEmpty> -->
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
								<!-- <logic:notEmpty name="CommonForm"
									property="dynaForm(assemblyList)">
									<html:optionsCollection name="CommonForm"
										property="dynaForm(assemblyList)" />
								</logic:notEmpty> -->
							</form:select>
							<div class="assembly_constituency"></div>
						</div>
					</div>
				</div>
				

				<div class="row">
					<div class="col-xl-12 col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="table-responsive">
							<bean:define id="addPlanLen" value="1"></bean:define>
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
											<c:if test="${map.upload_type eq 'Plan' }">
												<tr>
													<td>${i+1}.</td>
													<td><a href="${map.upload_path}" target="_blank"
														class="pull-right">View</a> <html:hidden
															property="dynaForm(hid_plan${i+1})"
															styleId="hid_plan${i+1}" value="${map.upload_path}" /> <html:file
															property="dynaForm(plan${i+1})" styleId="plan${i+1}"
															styleClass="form-control file-pdf-jgp-jpeg-200MB"></html:file>
													</td>
													<td></td>
												</tr>
												<bean:define id="addPlanLen" value="${i+1 }" />
											</c:if>
										</logic:iterate>
									</logic:notEmpty>
									<logic:empty name="Plan_uploads">
										<tr>
											<td>1.</td>
											<td><html:file property="dynaForm(plan1)"
													styleId="plan1"
													styleClass="form-control file-pdf-jgp-jpeg-200MB required"></html:file>
												<div class="plan1"></div></td>
											<td></td>
										</tr>
									</logic:empty>
								</tbody>
							</table>
							<html:hidden property="dynaForm(addPlanLen)" styleId="addPlanLen"
								value="${addPlanLen }" />
						</div>
					</div>
					<div class="col-xl-12 col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="table-responsive">
							<bean:define id="addPhotoLen" value="1"></bean:define>
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
														class="pull-right">View</a> <html:hidden
															property="dynaForm(hid_photo${i+1})"
															styleId="hid_photo${i+1}" value="${map.upload_path}" />
														<html:file property="dynaForm(photo${j+1})"
															styleId="photo${j+1}"
															styleClass="form-control file-jgp-jpeg-1MB"></html:file>
													</td>
													<td></td>
												</tr>
												<bean:define id="addPhotoLen" value="${j+1 }" />
											</c:if>
										</logic:iterate>
									</logic:notEmpty>
									<logic:empty name="Photo_uploads">
										<tr>
											<td>1.</td>
											<td><html:file property="dynaForm(photo1)"
													styleId="photo1"
													styleClass="form-control file-jgp-jpeg-1MB required"></html:file>
												<div class="photo1"></div></td>
											<td></td>
										</tr>
									</logic:empty>
								</tbody>
							</table>
							<html:hidden property="dynaForm(addPhotoLen)"
								styleId="addPhotoLen" value="${addPhotoLen }" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-12 col-xs-12 col-sm-6 col-md-6 col-lg-6">
						<div class="form-group">
							<label class="control-label " for="remarks">Remarks <span
								class="text-danger">*</span></label>
							<html:textarea property="dynaForm(remarks)" styleId="remarks"
								styleClass="form-control required max-length-200"></html:textarea>
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
									<html:textarea property="dynaForm(remarks)" styleId="remarks"
										styleClass="form-control required max-length-200"></html:textarea>
									<div class="remarks"></div>
								</div>
							</div>
						</div>
					</logic:equal>
					</logic:notEmpty>
					</logic:equal>
					</form:form>
					</div>
					</body>
					</html>
				</ --%>