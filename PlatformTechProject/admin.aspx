<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="admin.aspx.vb" Inherits="PlatformTechProject.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<div class="modal fade" id="LOG-IN" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <form class="form-horizontal">
                                            <div class="modal-header">
                                                <h2>Log In</h2>
                                            </div>
                                                <div class="modal-body">
                                                    <div class="form-group">
                                                        <label for="log-in-name" class="col-lg-2 control-label">Username:</label>
                                                        <div class="col-lg-10">
                                                            <input type="text" class="form-control" id="log-in-name" />
                                                        </div>
                                                    </div>

                                                    <div class="form-group">
                                                        <label for="password-name" class="col-lg-2 control-label">Password:</label>
                                                        <div class="col-lg-10">
                                                            <input type="password" class="form-control" id="password-name" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer">
                                                    <div class="btn btn-info" data-dismiss="modal">Submit</div>
                                                </div>
                                    </form>
                                </div>
                            </div>
                        </div>
</body>
</html>
