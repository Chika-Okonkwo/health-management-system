<%@ Page Title="" Language="C#" MasterPageFile="~/AHMS1.Master" AutoEventWireup="true" CodeBehind="UserSettings.aspx.cs" Inherits="AHMS1.UserSettings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page title -->
				<header id="page-header">
					<h1>Change Password</h1>
					<ol class="breadcrumb">
						<li><a href="#">Settings</a></li>
						<li class="active">Change Password</li>
					</ol>
				</header>
    				<!-- /page title -->
    <div id="content" class="padding-20">
   
					<!-- 
						PANEL CLASSES:
							panel-default
							panel-danger
							panel-warning
							panel-info
							panel-success

						INFO: 	panel collapse - stored on user localStorage (handled by app.js _panels() function).
								All pannels should have an unique ID or the panel collapse status will not be stored!
					-->
					<div id="panel-1" class="panel panel-default">
						<div class="panel-heading">
							<span class="title elipsis">
								<strong>CHANGE PASSWORD</strong> <!-- panel title -->
							</span>

							<!-- right options -->
							<ul class="options pull-right list-inline">
								<li><a href="#" class="opt panel_colapse" data-toggle="tooltip" title="Colapse" data-placement="bottom"></a></li>
								<li><a href="#" class="opt panel_fullscreen hidden-xs" data-toggle="tooltip" title="Fullscreen" data-placement="bottom"><i class="fa fa-expand"></i></a></li>
								<li><a href="#" class="opt panel_close" data-confirm-title="Confirm" data-confirm-message="Are you sure you want to remove this panel?" data-toggle="tooltip" title="Close" data-placement="bottom"><i class="fa fa-times"></i></a></li>
							</ul>
							<!-- /right options -->

						</div>

                        <!-- panel content -->
						<div class="panel-body">
                            <div class="alert alert-success alert-mini" runat="server" id="alrtSuccess" visible="false"><!-- SUCCESS -->
                                <button type="button" class="close" data-dismiss="alert">
                                    <span aria-hidden="true">×</span>
                                    <span class="sr-only">Close</span>

                                </button>
                                <strong class="fa fa-check-circle"></strong> Password changed successfully.

                            </div>

                            <div class="row">
                        <div class="col-md-6">
                            
                           <div class="form-horizontal">
                                <div class="form-group">
                                     <label class="col-sm-4 control-label">Old Password</label>
                                  <div class="col-sm-8">
                                     <asp:TextBox ID ="txtOldPword"  class="form-control" runat="server"  TextMode="Password"></asp:TextBox>
                                <asp:Label ID="lblMsg" runat="server" ForeColor ="Red" ></asp:Label>
                                  </div>
                                    
                                </div>
                           
                                
                               <div class="form-group">
                                    
                                   <label class="col-sm-4 control-label">New Password<span class="required"></span></label>
                                     
                                   <div class="col-sm-8">
                                         
                                       <asp:TextBox ID="txtNewPword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                
                                   </div>
                                   
                           
                               </div>

                                <div class="form-group">
                                    
                                   <label class="col-sm-4 control-label">Confirm Password<span class="required"></span></label>
                                     
                                   <div class="col-sm-8">
                                         
                                       <asp:TextBox ID="txtConPword" class="form-control" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="cmprvldtPword" ControlToCompare="txtNewPword" ForeColor="Red" ControlToValidate="txtConPword"  runat="server" ErrorMessage="<b>oops!<b> Passwords don't match"></asp:CompareValidator>
                                   </div>
                                    
                           
                               </div>

                           </div>

                        </div>
                    </div>
                            <br />
                            <asp:LinkButton runat="server" ID="btnUpdate" CssClass="btn btn-primary center-block width-200" OnClick="btnUpdate_Click"><i class="fa fa-refresh"></i>Update</asp:LinkButton>

                           
						</div>
                    </div>
    </div>

</asp:Content>
