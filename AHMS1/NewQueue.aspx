<%@ Page Title="" Language="C#" MasterPageFile="~/AHMS1.Master" AutoEventWireup="true" CodeBehind="NewQueue.aspx.cs" Inherits="AHMS1.NewQueue" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        	<!-- page title -->
				<header id="page-header">
					<h1>New Queue</h1>
					<ol class="breadcrumb">
						<li><a href="#">Appointment</a></li>
						<li class="active">New Queue</li>
					</ol>
				</header>
				<!-- /page title -->

    <div id="content" class="padding-20">

        <div class="row">
        <div class="col-lg-12">
            <!-- Form Elements -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    QUEUE LIST

                     <!-- right options -->
							<ul class="options pull-right list-inline">
								<li><a href="#" class="opt panel_colapse" data-toggle="tooltip" title="Colapse" data-placement="bottom"></a></li>
                                </ul>
                </div>
               
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-6">
                            
                           <div class="form-horizontal">
                                <div class="form-group">
                                     <label class="col-sm-4 control-label">Patient No.</label>
                                  <div class="col-sm-8">
                                      
      <asp:TextBox ID ="txtPatientNo"  class="form-control" runat="server" ></asp:TextBox>
                                      <asp:Label ID="lblMsg" runat="server" Visible="false" ForeColor ="Red" ></asp:Label>
                                </div>
                                    </div>
                  <div class="form-group">
                                 
                                      <label class="col-sm-4 control-label">Department <span class="required"></span></label>
                                      <div class="col-sm-8">
                                    <asp:DropDownList ID="ddlDept" class="form-control" AppendDataBoundItems="true" runat="server">
                                        <asp:listitem Text="--Select--"></asp:listitem>
                                        <asp:listitem Text="Paedratic" Value="Paedratic"></asp:listitem>
                                        <asp:listitem Text="Dentistry" Value="Dentistry"></asp:listitem>
                                    </asp:DropDownList>
                                      </div>
                                </div>            
                               
                          <div class="form-group">
                                    <label class="col-sm-4 control-label">Arrived at<span class="required"></span></label>
                               <div class="col-sm-8">
                                    <asp:TextBox ID="txtTime" class="form-control timepicker" runat="server"></asp:TextBox>
                                </div></div>
                              
                            
                               <div class="form-group">
                                 
                                      <label class="col-sm-4 control-label">Code <span class="required"></span></label>
                                      <div class="col-sm-8">
                                    <asp:DropDownList ID="ddlCode" class="form-control" AppendDataBoundItems="true" runat="server">
                                        <asp:listitem Text="--Select--"></asp:listitem>
                                        <asp:listitem Text="Blue" Value="P"></asp:listitem>
                                        <asp:listitem Text="Red" Value="E"></asp:listitem>
                                    </asp:DropDownList>
                                      </div>
                                </div>
                             

                               </div></div></div></div></div>

             <!-- End background History Form Elements -->
                  <br />
                                   <div class="form-group">
                                       
                                  <div class="col-sm-8" style ="margin-left:400px;">
                                      <asp:LinkButton ID="btnSave" runat="server" OnClick="btnSave_Click" class="btn btn-primary"><i class="fa fa-check"></i>Save</asp:LinkButton>
                           
                       
                            <a href ="AppointmentPage.aspx" class="btn btn-default"><i class="fa fa-arrow-left"></i>Return</a>
                                      </div>
                                </div>
        </div></div></div>

</asp:Content>
