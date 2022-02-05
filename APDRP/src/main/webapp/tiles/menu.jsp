<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<div class="navbar-custom">
	<div class="container">
		<div id="navigation">
			<!-- Navigation Menu-->
			<ul class="navigation-menu">
				<logic:notEmpty name='services' scope="session">
					<logic:iterate id="service" name="services" scope="session">
						<c:if test="${service.parent_id eq 0 && service.has_child eq true}">
							<li class="has-submenu">
								<a href="javascript:void(0)"><i class="${service.icon }"></i> ${service.service_name}</a>
								
								<ul class="submenu" style="margin-left: 10%;">
									<logic:iterate id="inner_service" name="services" scope="session">
										<c:if test="${service.service_id eq inner_service.parent_id }">
											<li>
												<a href="${inner_service.target }"><i class="${inner_service.icon }"></i> ${inner_service.service_name}</a>
											</li>	
										</c:if>
									</logic:iterate>
									<li>
												<a href="FormatsEntry" >   FormatsEntry</a>
											</li>
								</ul>
								
							</li>
						</c:if>
						<c:if test="${service.parent_id eq 0 && service.has_child eq false}">
							<li>
								<a href="${service.target }"><i class="${service.icon }"></i> ${service.service_name}</a>
							</li>
						</c:if>
					</logic:iterate>
				</logic:notEmpty>
					<ul class="submenu" style="margin-left: 10%;">
				<li>
												<a href="FormatsEntry" >   FormatsEntry</a>
											</li>
											</ul>
			</ul>
			<!-- End navigation menu -->
		</div>
		<!-- end #navigation -->
	</div>
	<div class="container-fluid" style="background: #d5d5ce;">
			<div class="row">
				<div class="col-md-12 col-lg-12 col-sm-12" style="margin-left: 5%;">
					<h5 class="pull-left">
					
						<c:if test="${sessionScope.role_id eq 5 }">
					 		<c:if test="${sessionScope.dept_type eq 'dept' }">
								Secretariat : <b>${sessionScope.sec_name }</b>&nbsp;<i class="fa fa-arrow-circle-right" style="margin: 0px 20px;color: maroon;" aria-hidden="true"></i>
							</c:if>
							&nbsp;HoD : <b>${sessionScope.dept_name }</b>&nbsp;<i class="fa fa-arrow-circle-right" style="margin: 0px 20px;color: maroon;" aria-hidden="true"></i>
							
							&nbsp;District : <b>${sessionScope.desc }</b>&nbsp;
						</c:if>
						<c:if test="${sessionScope.role_id eq 6 }">
					 		<c:if test="${sessionScope.dept_type eq 'dept' }">
								Secretariat : <b>${sessionScope.sec_name }</b>&nbsp;<i class="fa fa-arrow-circle-right" style="margin: 0px 20px;color: maroon;" aria-hidden="true"></i>
							</c:if>
							&nbsp;HoD : <b>${sessionScope.dept_name }</b>&nbsp;<i class="fa fa-arrow-circle-right" style="margin: 0px 20px;color: maroon;" aria-hidden="true"></i>
							
							&nbsp;Division : <b>${sessionScope.rev_div_name }</b>&nbsp;<i class="fa fa-arrow-circle-right" style="margin: 0px 20px;color: maroon;" aria-hidden="true"></i>
							
							&nbsp;District : <b>${sessionScope.desc }</b>&nbsp;
							
				 
						</c:if>
						<c:if test="${sessionScope.role_id eq 7 }">
							Division : <b>${sessionScope.rev_div_name }</b>&nbsp;<i class="fa fa-arrow-circle-right" style="margin: 0px 20px;color: maroon;" aria-hidden="true"></i>
							&nbsp;District : <b>${sessionScope.desc }</b>&nbsp;
						</c:if>
						
						<c:if test="${sessionScope.role_id eq 8 }">
							<b>District Collector</b>&nbsp;<i class="fa fa-arrow-circle-right" style="margin: 0px 20px;color: maroon;" aria-hidden="true"></i>
							&nbsp;District : <b>${sessionScope.desc }</b>&nbsp;
						</c:if>
						
						<c:if test="${sessionScope.role_id eq 9 }">
							<b>${sessionScope.desc }</b>&nbsp;
						</c:if>
						
						<c:if test="${sessionScope.role_id eq 2}">
							Secretariat : <b>${sessionScope.desc }</b>
						</c:if>
						<c:if test="${sessionScope.role_id eq 3}">
							HoD : <b>${sessionScope.desc }</b>
						</c:if>
					</h5>
				</div>
				 			</div></div>
	<!-- end container -->
</div>