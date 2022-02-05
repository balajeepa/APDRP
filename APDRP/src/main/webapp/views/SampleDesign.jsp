<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>File Upload Example in JSP and Servlet - Java web
	application</title>
</head>

<body>
	<div>
		<h3>Choose File to Upload in Server</h3>
		<form action="uploadfile" method="post" enctype="multipart/form-data"
			modelAttribute="fileDb">

			<!--  <input type="file" name="file" />
                <input type="submit" value="upload" />
                <div>
                <div>
                <tr> -->
			<!-- <td><label>group_name</label></td>
			<td><textarea name="group_name"></textarea></td>
		</tr>
		</div>
		 <div>
                <tr>
			<td><label>descrption</label></td>
			<td><textarea name="descrption"></textarea></td> -->
			</tr>
	</div>
	</form>
	</div>

	<div class="row">
		<div class="col-xl-12 col-xs-12 col-sm-6 col-md-6 col-lg-6">
			<div class="table-responsive">
				<bean:define id="addPlanLen" value="1"></bean:define>
				<div>

					<label>group_name</label>
					<textarea name="group_name"></textarea>

				</div>
				<div>

					<label>descrption</label> <textarea name="descrption">
					</textarea>
							</div>

				<table class="table table-bordered table_style">
					<thead>
						<tr>
							<th>Sl.No.</th>
							<th>Plan (Upload only *.pdf, *.jpg, *.jpeg files with size
								less than 200MB)</th>
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


						<tr>
							<td>${i+1}.</td>
							<td><div>
									<input type="file" name="file" /> <input type="submit"
										value="upload" />
									<div>
										<div></div>
									</div>
								</div></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>



