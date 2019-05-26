<%@ Page Title="" Language="C#" MasterPageFile="~/AHMS1.Master" AutoEventWireup="true" CodeBehind="AddVitals.aspx.cs" Inherits="AHMS1.AddVitals" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page title -->
				<header id="page-header">
					<h1>Add Vitals</h1>
					<ol class="breadcrumb">
						<li><a href="#">Patient Vitals</a></li>
						<li class="active">Add vital</li>
					</ol>
				</header>
				<!-- /page title -->

    <div id="content" class="padding-20">

        <div class="row">
        <div class="col-lg-12">
            <!-- Form Elements -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    ADD VITALS

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
                                    <label class="col-sm-4 control-label">Body Temperature<span class="required"></span></label>
                               <div class="col-sm-8">
                                    <asp:TextBox ID="txtTemp" placeholder="in degree celcius" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                </div></div>            
                               
                          <div class="form-group">
                                    <label class="col-sm-4 control-label">Weight<span class="required"></span></label>
                               <div class="col-sm-8">
                                    <asp:TextBox ID="txtWeight" placeholder="in Kilogram" CssClass="form-control" runat="server"></asp:TextBox>
                                </div></div>

                   
                              
                            
                               <div class="form-group">
                                 
                                      <label class="col-sm-4 control-label">Blood Pressure<span class="required"></span></label>
                                      <div class="col-sm-8">
                                    <asp:TextBox ID="txtBP" placeholder="in mmHg" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                      </div>
                                </div>
                             

                               </div></div></div></div></div>

             <!-- End Vitals Form Elements -->
                  <br />
                                   <div class="form-group">
                                       
                                  <div class="col-sm-8" style ="margin-left:400px;">
                                      <asp:LinkButton ID="btnSave" runat="server" OnClick="btnSave_Click" class="btn btn-primary"><i class="fa fa-check"></i>Save</asp:LinkButton>
                           
                       
                            <a href ="PatientVitals.aspx" class="btn btn-default"><i class="fa fa-arrow-left"></i>Return</a>
                                      </div>
                                </div>
        </div></div></div>
</asp:Content>
