<%@ Page Title="Compute Grades" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Program1.aspx.vb" Inherits="Multi.Program1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card {
            max-width: 500px;
        }
    </style>
</asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">

                <div class="card shadow">
                    <div class="card-header bg-dark text-white">
                        <h5 class="mb-0">Compute Grades (Percent Average)</h5>
                    </div>

                    <div class="card-body">

                        <div class="mb-3">
                            <label class="form-label">Prelim Grade</label>
                            <asp:TextBox ID="txtpre" runat="server"
                                CssClass="form-control" />
                            <asp:RegularExpressionValidator
                                 ID="RegularExpressionValidator1"
                                 ControlToValidate="txtpre"
                                 ValidationExpression="^\d+$"
                                 ErrorMessage="Numbers only"
                                 ForeColor="Red"
                                 runat="server" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Midterm Grade</label>
                            <asp:TextBox ID="txtmid" runat="server"
                                CssClass="form-control" />
                            <asp:RegularExpressionValidator
                                 ID="RegularExpressionValidator2"
                                 ControlToValidate="txtmid"
                                 ValidationExpression="^\d+$"
                                 ErrorMessage="Numbers only"
                                 ForeColor="Red"
                                 runat="server" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Final Grade</label>
                            <asp:TextBox ID="txtfin" runat="server"
                                CssClass="form-control" />
                            <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator3"
                                ControlToValidate="txtfin"
                                ValidationExpression="^\d+$"
                                ErrorMessage="Numbers only"
                                ForeColor="Red"
                                runat="server" />
                        </div>

                        <hr />

                        <div class="mb-3">
                            <label class="form-label">General Average</label>
                            <asp:TextBox ID="txtgenave" runat="server"
                                CssClass="form-control"
                                ReadOnly="True" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <asp:TextBox ID="txtrem" runat="server"
                                CssClass="form-control"
                                ReadOnly="True" />
                        </div>

                        <div class="d-grid">
                            <asp:Button ID="btnCom" runat="server"
                                Text="Compute"
                                CssClass="btn btn-primary btn-lg" />
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
