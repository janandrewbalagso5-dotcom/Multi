<%@ Page Title="Integer Comparison" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Program3.aspx.vb" Inherits="Multi.Program3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card {
            max-width: 480px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">

                <div class="card shadow">
                    <div class="card-header bg-dark text-white">
                        <h5 class="mb-0">Integer Comparison</h5>
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

                        <div class="d-grid mb-3">
                            <asp:Button ID="btnana" runat="server"
                                Text="Analyze"
                                CssClass="btn btn-primary btn-lg" />
                        </div>

                        <div class="alert alert-info text-center">
                            <asp:Label ID="lblresult" runat="server" />
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
