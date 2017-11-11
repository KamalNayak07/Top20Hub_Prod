<div class="modal-header">
            <h3>Reply Form</h3>
        </div>

<div class="panel-body">
		<form id="replyContactUs" method="post" ng-submit="submit()">
		
			<div class="form-group">
				<label for="Username" class="col-md-3 control-label">Name</label>
				<div class="col-md-9">
					<input type="text" class="form-control" name="name"
						ng-model="name" placeholder="Name">
				</div>
			</div>

			<div class="form-group">
				<label for="Message" class="col-md-3 control-label">Email</label>
				<div class="col-md-9">
					<input type="email" class="form-control" name="email"
						ng-model="email" placeholder="Email">
				</div>
			</div>
			<div class="form-group">
				<label for="phone" class="col-md-3 control-label">Message : </label>
				<div class="col-md-9">
					<!-- input type="textareat" class="form-control" name="phone"
						ng-model="" placeholder="Phone"> -->
						<textarea rows="5" cols="5" class="form-control" name="message" ng-model="replyMessage"></textarea>
				</div>
			</div>
	</form>
	</div>
	 <div class="modal-footer">
            <button class="btn btn-primary" ng-click="submit(name,email,replyMessage)">Send</button>
            <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
        </div>