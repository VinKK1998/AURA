<%@ include file="/WEB-INF/views/include.jsp"%>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title></title>

<!-- Favicon -->
  <link href="/elec5619/resources/admin/resources/img/brand/favicon.png" rel="icon" type="image/png">
<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
<!-- Icons -->
<link href="/elec5619/resources/admin/resources/js/plugins/nucleo/css/nucleo.css" rel="stylesheet" />
<link href="/elec5619/resources/admin/resources/js/plugins/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet" />
<!-- CSS Files -->
<link href="/elec5619/resources/admin/resources/css/argon-dashboard.css?v=1.1.0" rel="stylesheet" />
</head>

<body class="">
	<div class="main-content">
		<div class="container-fluid">
			<!-- img and title-->
			<center>
				<figure>
					<img src="/elec5619/resources/admin/resources/img/brand/blue.png" alt="AURA" vspace="30"
						width="169" height="50">
					<b>
						<figcaption>Welcome back, Administrator! |Product manager|</figcaption>
					</b>
				</figure>
			</center>
		</div>
		<!-- Table1 product -->
		<center>
		<table>
			<tbody>
				<th>
					<a href="/elec5619/admin/usertable">
     				 <button type="button" class="btn-icon-clipboard">
        				<div>
          					<i class="ni ni-circle-08"></i>
          					<span>Users</span>
        				</div>
      				</button>
				</th>
				<td>
					<a href="/elec5619/admin/ordertable">
    <button type="button" class="btn-icon-clipboard">
      <div>
        <i class="ni ni-cart"></i>
        <span>Orders</span>
      </div>
    </button>
				</td>
				<td>
					<a href="/elec5619/admin/commenttable">
    <button type="button" class="btn-icon-clipboard">
      <div>
        <i class="ni ni-single-copy-04"></i>
        <span>Comments</span>
      </div>
    </button>
				</td>
				<td>
					<a href="/elec5619/admin">
    				<button type="button" class="btn-icon-clipboard">
      				<div>
        				<i class="ni ni-bold-left"></i>
        				<span>Back</span>
      				</div>
    				</button>
				</td>
			</tbody>
		</table>
		</center>
		<div class="row mt-5">
			<div class="col">
				<div class="card shadow" style="padding-left: 7%;padding-right: 7%;">
					<div class="card-header border-0">
						<h3 class="mb-0">Product tables</h3>
					</div>
					<div class="table-responsive">
						<table class="table align-items-center table-flush">
							<thead class="thead-light">
								<tr>
									<th scope="col">Product ID</th>
									<th scope="col">Name</th>
									<th scope="col">OwnerID</th>
									<th scope="col">Location</th>
									<th scope="col">House type</th>
									<th scope="col">Price</th>
									<th scope="col">Rooms</th>
									<th scope="col">Parking available</th>
									<th scope="col">Status</th>
									<th scope="col"></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${model.products}" var="prod">
									<tr>

										<th scope="row"><c:out value="${prod.ID}" /></th>
										<td><c:out value="${prod.name}" /></td>
										<td><c:out value="${prod.ownerID}" /></td>
										<td><c:out value="${prod.location}" /></td>
										<td><c:out value="${prod.houseType}" /></td>
										<td><c:out value="${prod.price}" /></td>
										<td><c:out value="${prod.numberOfRooms}" /></td>
										<td><c:out value="${prod.parkingAvailable}" /></td>
										<td><c:out value="${prod.status}" /></td>
										<td class="text-right">
											<div class="dropdown">
												<a class="btn btn-sm btn-icon-only text-light" href="#"
													role="button" data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false"> <i class="fas fa-ellipsis-v"
													style="padding-top: 10px"></i>
												</a>
												<div
													class="dropdown-menu dropdown-menu-right dropdown-menu-arrow">
													<a class="dropdown-item" href="/elec5619/adminproduct/edit/${prod.ID}">Edit</a>
													<a class="dropdown-item" href="/elec5619/adminproduct/delete/${prod.ID }">Delete</a>
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>
							</tbody>
							</table>
							</div>
							</div>
							</div>
							</div>

							<!--   Core   -->
							<script src="/elec5619/resources/admin/resources/js/plugins/jquery/dist/jquery.min.js"></script>
							<script src="/elec5619/resources/admin/resources/js/plugins/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
							<script src="/elec5619/resources/admin/resources/js/plugins/clipboard/dist/clipboard.min.js"></script>
							<script src="/elec5619/resources/admin/resources/js/argon-dashboard.min.js?v=1.1.0"></script>
  							<script src="https://cdn.trackjs.com/agent/v3/latest/t.js"></script>
</body>

</html>