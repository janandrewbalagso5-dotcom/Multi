<%@ Page Title="Cumulative Grading System" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Program4.aspx.vb" Inherits="Multi.Program4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .card {
            max-width: 550px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">

                <div class="card shadow">
                    <div class="card-header bg-dark text-white">
                        <h5 class="mb-0">Cumulative Grading System & Numerical Equivalence</h5>
                    </div>

                    <div class="card-body">

                        <div class="mb-3">
                            <label class="form-label">Prelim Grade</label>
                            <asp:TextBox ID="txtPre" runat="server" CssClass="form-control" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Midterm Grade</label>
                            <asp:TextBox ID="txtmid" runat="server" CssClass="form-control" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Final Grade</label>
                            <asp:TextBox ID="txtfi" runat="server" CssClass="form-control" />
                        </div>

                        <hr />

                        <div class="mb-3">
                            <label class="form-label">Cumulative Midterm Grade</label>
                            <asp:TextBox ID="txtcmg" runat="server" CssClass="form-control" ReadOnly="True" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Cumulative Final Grade</label>
                            <asp:TextBox ID="txtcmf" runat="server" CssClass="form-control" ReadOnly="True" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Remarks</label>
                            <asp:TextBox ID="txtrem" runat="server" CssClass="form-control" ReadOnly="True" />
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Numerical Equivalence</label>
                            <asp:TextBox ID="txteq" runat="server" CssClass="form-control" ReadOnly="True" />
                        </div>

                        <div class="d-grid">
                            <asp:Button ID="btnCom" runat="server" Text="Compute" CssClass="btn btn-primary btn-lg" />
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
</asp:Content>
