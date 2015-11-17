
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath =
request.getScheme() + "://"
+ request.getServerName() + ":" +
request.getServerPort()
+ path + "/";
%>
<script charset="utf-8" src="<%=path%>/editor/kindeditor.js"></script>
<script charset="utf-8" src="<%=path%>/editor/lang/zh_CN.js"></script>
<script>
		var base="<%=path%>";
        KindEditor.ready(function(K) {
                window.editor = K.create('#editor');
        });
</script>
<div class="row" style="margin:50px 0 0 0">
	<div class="col-md-12">
		<button onclick="newBlog()" class="btn btn-success btn-block">添加文章</button>
		<!-- Modal -->
		<div class="modal fade" id="blogEditor" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel">
			<div class="modal-dialog modal-lg" role="document">
				<form action="<%=path%>/blog/save" method="post">
					<input type="hidden" name="id" id="id"></input>
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;
								</span>
							</button>
							<h4 class="modal-title" id="myModalLabel">博客编辑</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label for="exampleInputEmail1">标题</label>
								<input type="text" class="form-control" id="title" name="title"
									placeholder="title">
							</div>
							<div class="form-group">
								<label class="radio-inline">
									<input type="radio" name="type" id="inlineRadio1" value="1">
										IT那些事
								</label>
								<label class="radio-inline">
									<input type="radio" name="type" id="inlineRadio2" value="2">
										日常
								</label>
								<label class="radio-inline">
									<input type="radio" checked="checked" name="type" id="inlineRadio3"
										value="3"> 心情
								</label>
							</div>
							<div class="form-group">
								<textarea style="width:100%;height:500px" id="editor" name="context" class="form-control" rows="25"></textarea>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<button type="submit" class="btn btn-primary">保存</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>