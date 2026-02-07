<%@ Page Title="Fundamentals of Math" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Program2.aspx.vb" Inherits="Multi.Program2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card {
            max-width: 520px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">

                <div class="card shadow">
                    <div class="card-header bg-dark text-white">
                        <h5 class="mb-0">Fundamentals of Math</h5>
                    </div>

                    <div class="card-body">

                        <div class="mb-3">
                            <label class="form-label">Integer 1</label>
                            <asp:TextBox ID="txtone" runat="server"
                                CssClass="form-control" />
                            <asp:RegularExpressionValidator
                                 ID="revOne"
                                 ControlToValidate="txtone"
                                 ValidationExpression="^\d+$"
                                 ErrorMessage="Numbers only"
                                 ForeColor="Red"
                                 runat="server" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Integer 2</label>
                            <asp:TextBox ID="txttwo" runat="server"
                                CssClass="form-control" />
                            <asp:RegularExpressionValidator
                                 ID="RegularExpressionValidator1"
                                 ControlToValidate="txttwo"
                                 ValidationExpression="^\d+$"
                                 ErrorMessage="Numbers only"
                                 ForeColor="Red"
                                 runat="server" />
                        </div>

                        <hr />

                        <div class="mb-3">
                            <label class="form-label">Total Sum</label>
                            <asp:TextBox ID="txtsum" runat="server"
                                CssClass="form-control"
                                ReadOnly="True" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Total Difference</label>
                            <asp:TextBox ID="txtDiff" runat="server"
                                CssClass="form-control"
                                ReadOnly="True" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Total Quotient</label>
                            <asp:TextBox ID="txtQuo" runat="server"
                                CssClass="form-control"
                                ReadOnly="True" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Total Product</label>
                            <asp:TextBox ID="txtPro" runat="server"
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
