<div component="composer" class="composer<!-- IF resizable --> resizable<!-- ENDIF resizable -->"<!-- IF !disabled --> style="visibility: inherit;"<!-- ENDIF !disabled -->>

	<div class="composer-container">
		<nav class="navbar navbar-fixed-top mobile-navbar visible-xs visible-sm">
			<div class="pull-left">
				<button class="btn btn-sm btn-primary composer-discard" data-action="discard" tabindex="-1"><i class="fa fa-times"></i></button>
			</div>
			<!-- IF isTopic -->
			<div class="category-name-container">
				<span class="category-name"></span> <i class="fa fa-sort"></i>
			</div>
			<!-- ENDIF isTopic -->
			
			<div class="pull-right">
				<button class="btn btn-sm btn-primary composer-submit" data-action="post" tabindex="-1"><i class="fa fa-chevron-right"></i></button>
			</div>
		</nav>

		<div class="title-container row">
			<!-- IF showHandleInput -->
				<div class="col-sm-3 col-md-12">
					<input class="handle form-control" type="text" tabindex="1" placeholder="[[topic:composer.handle_placeholder]]" value="{handle}"/>
				</div>
			
			<!-- ELSE -->
				<!-- IF isTopic -->
					<div class="category-list-container col-lg-3 col-md-12 hidden-sm hidden-xs">
						<select tabindex="3" class="form-control category-list"></select>
					</div>
				<!-- ENDIF isTopic -->
			<!-- ENDIF showHandleInput -->
		</div>

		<div class="row category-tag-row">
			<div class="btn-toolbar formatting-bar">
				<div class="btn-group pull-right action-bar hidden-sm hidden-xs">
					<button class="btn btn-default composer-discard" data-action="discard" tabindex="-1"><i
								class="fa fa-times"></i> [[topic:composer.discard]]
					</button>

					<button class="btn btn-primary composer-submit" data-action="post" tabindex="6"><i
								class="fa fa-check"></i> [[topic:composer.submit]]
					</button>
				</div>

				<!-- IF isTopicOrMain -->
				<div class="tags-container inline-block">
					<div class="btn-group <!-- IF !tagWhitelist.length -->hidden<!-- ENDIF !tagWhitelist.length -->" component="composer/tag/dropdown">
						<button class="btn btn-default dropdown-toggle" data-toggle="dropdown" type="button">
							<span class="visible-sm-inline visible-md-inline visible-lg-inline"><i class="fa fa-tags"></i></span>
							<span class="caret"></span>
						</button>

						<ul class="dropdown-menu">
							<!-- BEGIN tagWhitelist -->
							<li data-tag="@value"><a href="#">@value</a></li>
							<!-- END tagWhitelist -->
						</ul>
					</div>

					<input class="tags" type="text" class="form-control" placeholder="[[tags:enter_tags_here, {minimumTagLength}, {maximumTagLength}]]" tabindex="4"/>
				</div>
				<!-- ENDIF isTopicOrMain -->
			</div>
		</div>

		<div>
			<label for="case-title">Case Title</label>  
		  	<div>
				<!-- <input class="form-control" type="text" id="case-title" name="case-title" placeholder="Case Title" required="required"> -->
				<input class="form-control" type="text" tabindex="1" placeholder="Case Title" value="{title}"/>
		  	</div>
		</div>

		<span class="write-container">
			<textarea></textarea>
		</span>

	<!-- IF isTopic -->
	<ul class="category-selector visible-xs visible-sm"></ul>
	<!-- ENDIF isTopic -->

		<div class="resizer">
			<div class="trigger text-center"><i class="fa"></i></div>
		</div>
	</div>
</div>