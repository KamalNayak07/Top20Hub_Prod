	<div class="container" ng-controller="contentController as ctrl">
		<div class="panel panel-default">

			<div class="panel-heading">
				<span class="lead"> Content Admin Page </span>
			</div>
			<br />
			<div class="container">
				<form ng-submit="ctrl.submit()" name="myForm"
					class="form-horizontal" enctype="multipart/form-data">
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="uname">Title</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.content.title"
									id="subject" class="subject form-control input-sm"
									placeholder="Content's Title" required ng-minlength="3" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="uname">Description</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.content.description"
									id="subject" class="subject form-control input-sm"
									placeholder="" required ng-minlength="3" />
							</div>
						</div>
					</div>
					
					
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="uname">Links</label>
							<div class="col-md-7">
								<input type="text" ng-model="ctrl.content.links"
									id="subject" class="subject form-control input-sm"
									placeholder="" required ng-minlength="3" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="Image">Image</label>
							<div class="col-md-7">
								<input type="file" file-model="ctrl.content.content_image" id="image" class="form-control input-sm"
									placeholder="Content's image"  />
							</div>
						</div>
					</div>
					
					<div class="row">
						<div class="form-group col-md-12">
							<label class="col-md-2 control-lable" for="fname">Select Topic</label>
							<div class="col-md-7">
								<select ng-model="ctrl.content.topic.topic_id" ng-options="x.topic_id as x.subject for x in ctrl.topics"></select>
							</div>
						</div>
					</div>					
					
									
				<div class="container">
					<div class="row">						
						<div class="form-actions floatRight">
							<input type="submit" value="{{!ctrl.content.content_id ? 'Add' : 'Update'}}"
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
				<span class="lead">List of Contents :{{ctrl.contents.length}} </span>
			</div>
			<div class="container">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>Content Id</th>
							<th>Title</th>							
							<th>Topic Name </th>
							<th>Description</th>
							<th>Links</th>
							<th>Image</th>
							<th width="20%"></th>
						 </tr>
					</thead>
					<tbody>
						<tr ng-repeat="u in ctrl.contents | filter : ctrl.searchText">
							<td><span ng-bind="u.content_id"></span></td>
							<td><span ng-bind="u.title"></span></td>							
							<td><span ng-bind="u.topic.subject"></span></td>
							<td><span ng-bind="u.description"></span></td>	
							<td><span ng-bind="u.links"></span></td>								
							<td><img src="${pageContext.request.contextPath}{{u.content_url}}" align="middle" height="200" width="300"/></td>
							<td>
								<button type="button" ng-click="ctrl.editContent(u.content_id)"
								class="btn btn-success custom-width">Edit</button>
								&nbsp&nbsp							
								<button type="button" ng-click="ctrl.remove(u.content_id)"
								class="btn btn-danger custom-width">Remove</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	