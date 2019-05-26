<%@ Page Title="" Language="C#" MasterPageFile="~/AHMS1.Master" AutoEventWireup="true" CodeBehind="ConsultationPage.aspx.cs" Inherits="AHMS1.ConsultationPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- page title -->
				<header id="page-header">
					<h1>Patient Consultation</h1>
					<ol class="breadcrumb">
						<li><a href="#">Patient</a></li>
						<li class="active">Consultation</li>
					</ol>
				</header>
				<!-- /page title -->

    <div id="content" class="padding-20">

        <div class="row">
        <div class="col-lg-12">
            <div id="panel-misc-portlet-r2" class="panel panel-default">

								<div class="panel-heading">
                                	<!-- tabs nav -->
									<ul class="nav nav-tabs pull-left">
										<li class="active"><!-- TAB 1 -->
											<a href="#ttab1_nobg" data-toggle="tab">Personal Details<span class="caret"></span></a>
										</li>
										<li class=""><!-- TAB 2 -->
											<a href="#ttab2_nobg" data-toggle="tab"> Vitals <span class="caret"></span></a>
										</li>
										<li class=""><!-- TAB 3 -->
											<a href="#ttab3_nobg" data-toggle="tab"> Background<span class="caret"></span></a>
										</li>
                                        <li class=""><!-- TAB 4 -->
											<a href="#ttab4_nobg" data-toggle="tab"> Consultation<span class="caret"></span></a>
										</li>
									</ul>
									<!-- /tabs nav -->

								</div>

								<!-- panel content -->
								<div class="panel-body">

										<!-- tabs content -->
										<div class="tab-content transparent">

											<div id="ttab1_nobg" class="tab-pane active"><!-- TAB 1 CONTENT -->
											 <div class="panel panel-default">
   
               
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
                                    <label class="col-sm-4 control-label">Last Name<span class="required"></span></label>
                               <div class="col-sm-8">
                                    <asp:TextBox ID="txtLName" class="form-control" runat="server"></asp:TextBox>
                                </div></div>
                              
                             <div class="form-group">
                                    <label class="col-sm-4 control-label">Date of Birth <span class="required"></span></label>
                                  <div class="col-sm-8">
                                    <asp:TextBox ID="txtDOB" CssClass="form-control datepicker" data-format="yyyy-mm-dd" data-lang="en" data-RTL="false" runat="server"></asp:TextBox>
                                      </div>
                                </div>
                               <div class="form-group">
                                    <label class="col-sm-4 control-label">Age <span class="required"></span></label>
                                  <div class="col-sm-3">
                                    <asp:TextBox ID="txtAge" class="form-control" TextMode="Number" placeholder="years" runat="server"></asp:TextBox>
                                      </div>
                                      <label class="col-sm-1 control-label">Sex <span class="required"></span></label>
                                      <div class="col-sm-3 select">
                                    <asp:DropDownList ID="ddlSex" class="form-control" AppendDataBoundItems="true" runat="server">
                                        <asp:listitem Text="--Select--"></asp:listitem>
                                        <asp:listitem Text="Male" Value="Male"></asp:listitem>
                                        <asp:listitem Text="Female" Value="Female"></asp:listitem>
                                    </asp:DropDownList>
                                      </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label"> Religion <span class="required"></span></label>
                                    <div class="col-sm-8">
                                        <label class="select">
                                    <asp:DropDownList CssClass="form-control" AppendDataBoundItems="true" ID="ddlReligion" runat="server">
                                        <asp:ListItem Text="--select--"></asp:ListItem>
                                        <asp:ListItem Text="Christianity" Value="Christianity"></asp:ListItem>
                                        <asp:ListItem Text="Islam" Value="Islam"></asp:ListItem>
                                         <asp:ListItem Text="Other" Value="Other"></asp:ListItem>
                                    </asp:DropDownList>
                                            <i></i>
                                            </label>
                                </div>
                                </div>
                               <div class="form-group">
                                    <label class="col-sm-4 control-label">Residential Address <span class="required"></span></label>
                                  <div class="col-sm-8">
                                    <asp:TextBox ID="txtAddress" TextMode="MultiLine" class="form-control" runat="server"></asp:TextBox>
                                      </div>
                                </div>
                       
                                </div>
                            </div>

                        <!--2nd grid column-->
                          <div class="col-md-6">
                                 <div class="form-horizontal">
                             
                                  <div class="form-group">
                                    <label class="col-sm-4 control-label">First Name<span class="required"></span></label>
                                     <div class="col-sm-8">
                                        <asp:TextBox ID="txtFName" class="form-control" runat="server"></asp:TextBox>
                                </div>
                           </div>
                                  <div class="form-group">
                                    <label class="col-sm-4 control-label">Middle Name<span class="required"></span></label>
                             <div class="col-sm-8">
                                    <asp:TextBox ID="txtMName" class="form-control" runat="server"></asp:TextBox>
                                 </div>
                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-4 control-label">Phone Number <span class="required"></span></label>
                                   <div class="col-sm-8">
                                    <asp:TextBox ID="txtPhoneNo" class="form-control" TextMode="Phone" runat="server"></asp:TextBox>
                                       </div>
                                </div>
                       
                                  
                                 <div class="form-group">
                                    <label class="col-sm-4 control-label"> Marital Status <span class="required"></span></label>
                                   <div class="col-sm-8">
                                    <asp:DropDownList CssClass="form-control" AppendDataBoundItems="true" ID="ddlMStatus" runat="server">
                                        <asp:ListItem Text="--select--"></asp:ListItem>
                                        <asp:ListItem Text="Single" Value="Single"></asp:ListItem>
                                        <asp:ListItem Text="Married" Value="Married"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                 </div>
                             
                           
                         <div class="form-group">
                                    <label class="col-sm-4 control-label">Occupation <span class="required"></span></label>
                               <div class="col-sm-8">
                                    <asp:TextBox ID="txtOccupation" class="form-control" runat="server"></asp:TextBox>
                                   </div>
                                </div>
                       

                             </div>

                          </div>
                </div>
            
            <!-- End Personal Profile Form Elements -->
        </div>
    </div>
											</div><!-- /TAB 1 CONTENT -->
                                            <div id="ttab2_nobg" class="tab-pane"><!-- TAB 2 CONTENT -->
                                           
                                                     <div class="panel-body">
                    <div class="row">
                        <div class="col-md-6">
                            
                           <div class="form-horizontal">
                                <div class="form-group">
                                     <label class="col-sm-4 control-label">Patient No.</label>
                                  <div class="col-sm-8">
                                      
      <asp:TextBox ID ="TextBox1"  class="form-control" runat="server" ></asp:TextBox>
                                      <asp:Label ID="Label1" runat="server" Visible="false" ForeColor ="Red" ></asp:Label>
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
                             

                               </div></div></div></div>

             <!-- End Vitals Form Elements -->
                                                    
                                                </div>   <!-- /TAB 2 CONTENT -->
											<div id="ttab3_nobg" class="tab-pane"><!-- TAB 3 CONTENT -->
											 
       
                   <div class="panel-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Patient Complaint</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID ="txtComplaint" TextMode="MultiLine"  class="form-control" runat="server" ></asp:TextBox>

                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Medical History</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID ="txtMedHistory" TextMode="MultiLine"  class="form-control" runat="server" ></asp:TextBox>

                                    </div>

                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-4 control-label">Family Social History</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID ="txtFsocHistory" TextMode="MultiLine"  class="form-control" runat="server" ></asp:TextBox>

                                    </div>

                                </div>
                            </div>

                        </div>
                         <div class="col-md-6">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Complaint History</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID ="txtComHistory" TextMode="MultiLine"  class="form-control" runat="server" ></asp:TextBox>

                                    </div>

                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-4 control-label">Drug History</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID ="txtDHistory" TextMode="MultiLine"  class="form-control" runat="server" ></asp:TextBox>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>
                 </div>
                  <!-- End background History Form Elements -->

											</div><!-- /TAB 3 CONTENT -->
                   <div id="ttab4_nobg" class="tab-pane">     <!-- TAB 4 CONTENT -->
                    <div class="panel-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Symptoms</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID ="TextBox2" TextMode="MultiLine"  class="form-control" runat="server" ></asp:TextBox>

                                    </div>

                                </div>
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Assesment</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID ="TextBox3" TextMode="MultiLine"  class="form-control" runat="server" ></asp:TextBox>

                                    </div>

                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-4 control-label">Diagnosis</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID ="TextBox4" TextMode="MultiLine"  class="form-control" runat="server" ></asp:TextBox>

                                    </div>

                                </div>
                            </div>

                        </div>
                         <div class="col-md-6">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-4 control-label">Observation</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID ="TextBox5" TextMode="MultiLine"  class="form-control" runat="server" ></asp:TextBox>

                                    </div>

                                </div>
                                 <div class="form-group">
                                    <label class="col-sm-4 control-label">Plan</label>
                                    <div class="col-sm-8">
                                        <asp:TextBox ID ="TextBox6" TextMode="MultiLine"  class="form-control" runat="server" ></asp:TextBox>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>
                 </div>
                  <!-- End background History Form Elements -->

                   </div>    <!-- /TAB 4 CONTENT -->

										</div>
										<!-- /tabs content -->

								</div>
								<!-- /panel content -->

							</div>
							<!-- /Tabs Right -->
            </div>
            <!-- Form Elements -->
           

                              <br />
                                   <div class="form-group">
                                       <label class="col-sm-4 control-label"> <span class="required"></span></label>
                                  <div class="col-sm-8" style ="margin-left:400px;">
                                      <asp:LinkButton ID="btnSave" runat="server" class="btn btn-primary"><i class="fa fa-check"></i> Save</asp:LinkButton>
                           
                       
                            <a href ="PatientList.aspx" class="btn btn-default"><i class="fa fa-arrow-left"></i>Return</a>
                                      </div>
                                </div>

             </div>
           

           
        </div>
       
</asp:Content>
