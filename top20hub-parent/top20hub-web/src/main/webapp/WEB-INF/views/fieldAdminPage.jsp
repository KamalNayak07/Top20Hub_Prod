
<div class="container-fluid" ng-controller="fieldController as ctrl">
	<div class="panel panel-default">

		<div class="panel-heading">
			<span class="lead"> Field Admin Page </span>
		</div>
		<br />
		<div class="container">
			<form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal"
				enctype="multipart/form-data">
				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-2 control-lable" for="uname">Field
							Name</label>
						<div class="col-md-7">
							<input type="text" ng-model="ctrl.field.field_desc"
								id="field_desc" class="field_desc form-control input-sm"
								placeholder="Field Name" required ng-minlength="3" />
						</div>
					</div>
				</div>


				<div class="row">
					<div class="form-group col-md-12">
						<label class="col-md-2 control-lable" for="Image">Image</label>
						<div class="col-md-7">
							<input type="file" file-model="ctrl.field.field_image" id="image"
								class="form-control input-sm" placeholder="Field image" />
						</div>
					</div>
				</div>

				<div class="container">
					<div class="row">
						<div class="form-actions floatRight">
							<input type="submit"
								value="{{!ctrl.field.field_id ? 'Add' : 'Update'}}"
								class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
							<button type="button" ng-click="ctrl.reset()"
								class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset
							</button>
						</div>
					</div>
				</div>




			</form>
		</div>
	</div>
	<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<span class="lead">List of Fields :{{ctrl.fields.length}} </span>
		</div>
		<div class="container">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Field Id</th>
						<th>Field Name</th>
						<th>Field URL</th>
						<th>Field Image</th>
						<th width="20%"></th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="u in ctrl.fields | filter : ctrl.searchText">
						<td><span ng-bind="u.field_id"></span></td>
						<td><span ng-bind="u.field_desc"></span></td>
						<td><span ng-bind="u.field_url"></span></td>
						<td><img
							src="${pageContext.request.contextPath}{{u.field_url}}"
							align="middle" height="200" width="300" /></td>
						<td>
							<button type="button" ng-click="ctrl.editField(u.field_id)"
								class="btn btn-success custom-width">Edit</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
