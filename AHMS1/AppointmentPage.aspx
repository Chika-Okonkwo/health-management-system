<%@ Page Title="" Language="C#" MasterPageFile="~/AHMS1.Master" AutoEventWireup="true" CodeBehind="AppointmentPage.aspx.cs" Inherits="AHMS1.AppointmentPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- page title -->
				<header id="page-header">
					<h1>Waiting Queue</h1>
					<ol class="breadcrumb">
						<li><a href="#">Appointment</a></li>
						<li class="active">Waiting Queue</li>
					</ol>
				</header>
				<!-- /page title -->

    <section>
        
        <!-- Success -->
          <div class="alert alert-success alert-mini" runat="server" id="alrtSuccess" visible="false"><!-- SUCCESS -->
                                <button type="button" class="close" data-dismiss="alert">
                                    <span aria-hidden="true">×</span>
                                    <span class="sr-only">Close</span>

                                </button>
                                <strong class="fa fa-check-circle">Success!</strong> 1 patient added. 

          </div>

				<div id="content" class="padding-20">
                    <span ><a href="NewQueue.aspx" class="btn btn-danger"><i class="fa fa-plus-circle"> </i> Add to Queue</a></span>

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
								<strong>QUEUE LIST</strong> <!-- panel title -->
							</span>

							<!-- right options -->
							<ul class="options pull-right list-inline">
								<li><a href="#" class="opt panel_colapse" data-toggle="tooltip" title="Colapse" data-placement="bottom"></a></li>
								<li><a href="#" class="opt panel_fullscreen hidden-xs" data-toggle="tooltip" title="Fullscreen" data-placement="bottom"><i class="fa fa-expand"></i></a></li>
								
							</ul>
							<!-- /right options -->

						</div>

						<!-- panel content -->
						<div class="panel-body">

							<table class="table table-striped table-bordered table-hover" id="datatable_sample">
								<thead>
									<tr>
									
										<th>Patient No.</th>
										<th>Name</th>
										<th>Sex</th>
										<th>Age (yrs)</th>
                                        <th>Arrived at</th>
                                        <th>Department</th>
                                        <th>Status</th>
                                        <th>Code/Remark</th>
                                        <th></th>

										
									</tr>
								</thead>

								<tbody>
                                     <asp:Repeater ID="rptrQueueList"  runat="server">
                    <ItemTemplate>
                        <tr >
                         
                         
                              <td><%#Eval("PatientNo") %></td>  
                            <td><%#Eval("Firstname") %> <%#Eval("Lastname") %></td>
                              <td><%#Eval("sex") %></td>  
                            <td><%#Eval("Age") %></td>
                            <td><%#Eval("DateCreated","{0:hh:mm tt}") %></td>
                            <td><%#Eval("Status") %></td>
                            
                            
                              <td><asp:Label runat="server" CssClass = '<%#Eval("ctrlclass") %>' ID="lblstat"><%#Eval("Name") %></i></asp:Label>     </td> 
                            <td>
                            <asp:LinkButton runat="server" CssClass="btn-sm btn-primary" ID="lbtnView"><i class="fa fa-eye"></i> View</asp:LinkButton> &nbsp&nbsp&nbsp
                                <asp:LinkButton CssClass="btn-sm btn-warning" runat="server" ID="lbtnEdit"><i class="fa fa-pencil-square-o"></i> Edit</asp:LinkButton></td>
                          
                        </tr>

                    </ItemTemplate>
                </asp:Repeater>
									
								
									
								</tbody>
							</table>

						</div>
						<!-- /panel content -->

						<!-- panel footer -->
						<div class="panel-footer">


						</div>
						<!-- /panel footer -->

					</div>
					<!-- /PANEL -->

				</div>
			</section>
			<!-- /MIDDLE -->




    <script>
        $(document).ready(function () {
        $('#dataTables-example').dataTable();
        });
    </script>
</asp:Content>
