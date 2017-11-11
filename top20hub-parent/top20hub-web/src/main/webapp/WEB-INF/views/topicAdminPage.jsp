 
	<div class="container" ng-controller="topicController as ctrl">
		<div class="panel panel-default">

			<div class="panel-heading">
				<span class="lead"> Topic Admin Page </span>
			</div>
			<br />
			<div class="container">
				<form ng-submit="ctrl.submit()" name="myForm"
					class="form-horizontal" enctype="multipart/form-data">
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="uname">Topic
								Name</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.topic.subject"
									id="subject" class="subject form-control input-sm"
									placeholder="Topic's Name" required ng-minlength="3" />
							</div>
						</div>
					</div>


					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="Image">Image</label>
							<div class="col-md-7">
								<input type="file" file-model="ctrl.topic.topic_image" id="image" class="form-control input-sm"
									placeholder="Topic's image"  />
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="fname">Select Field</label>
							<div class="col-md-7">
								<select ng-model="ctrl.topic.field.field_id" ng-options="x.field_id as x.field_desc for x in ctrl.fields"></select>
							</div>
						</div>
					</div>
					
				
				<div class="container">
					<div class="row">						
						<div class="form-actions floatRight">
							<input type="submit" value="{{!ctrl.topic.topic_id ? 'Add' : 'Update'}}"
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
				<span class="lead">List of Topics :{{ctrl.topics.length}} </span>
			</div>
			<div class="container">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Topic Id</th>
							<th>Topic Name</th>							
							<th>Field Name </th>
							<th>Topic URL</th>
							<th>Topic Image</th>
							<th width="20%"></th>
						 </tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in ctrl.topics | filter : ctrl.searchText">
							<td><span ng-bind="u.topic_id"></span></td>
							<td><span ng-bind="u.subject"></span></td>							
							<td><span ng-bind="u.field.field_desc"></span></td>
							<td><span ng-bind="u.topic_url"></span></td>	
							<td><img src="${pageContext.request.contextPath}{{u.topic_url}}" align="middle" height="200" width="300"/></td>
							<td>
								<button type="button" ng-click="ctrl.editTopic(u.topic_id)"
								class="btn btn-success custom-width">Edit</button>
								&nbsp&nbsp							
								<button type="button" ng-click="ctrl.remove(u.topic_id)"
								class="btn btn-danger custom-width">Remove</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

