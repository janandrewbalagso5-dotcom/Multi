<%@ Page Title="Simple Calculator" Language="vb" AutoEventWireup="false"
    MasterPageFile="~/Site.Master"
    CodeBehind="default.aspx.vb"
    Inherits="Multi._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            background-color: #f4f4f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .row.justify-content-center {
            min-height: 90vh;
            display: flex;
            align-items: center;
        }

        .card {
            background-color: #ffffff;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }

        .card-header {
            background-color: #343a40;
            color: white;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            text-align: center;
            font-size: 1.5rem;
            font-weight: bold;
        }

        .calc-display {
            font-size: 2rem;
            text-align: right;
            padding: 10px;
            border-radius: 10px;
            border: 1px solid #ced4da;
            margin-bottom: 15px;
        }

        .calc-btn {
            width: 100%;
            height: 70px;
            font-size: 1.4rem;
            margin: 5px 0;
            border-radius: 10px;
            transition: all 0.2s;
        }

        .calc-btn:hover {
            transform: scale(1.05);
        }

        .btn-light {
            background-color: #e9ecef;
            border: none;
        }

        .btn-light:hover {
            background-color: #dee2e6;
        }

        .btn-warning {
            background-color: #ffc107;
            color: #212529;
            border: none;
        }

        .btn-warning:hover {
            background-color: #e0a800;
        }

        .btn-success {
            background-color: #28a745;
            border: none;
        }

        .btn-success:hover {
            background-color: #218838;
        }

        .btn-danger {
            background-color: #dc3545;
            border: none;
        }

        .btn-danger:hover {
            background-color: #c82333;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
                    <div class="card-header bg-dark text-white">
                        <h5 class="mb-0">Simple Calculator </h5>
                    </div>
  <div class="row justify-content-center">
        <div class="col-md-4">
            <div class="card shadow p-3">

                <asp:TextBox ID="txtDisplay" runat="server" CssClass="form-control calc-display mb-3" ReadOnly="True" />

                <div class="row">
                    <!-- First row -->
                    <div class="col-3"><asp:Button ID="btn7" runat="server" Text="7" CssClass="btn btn-light calc-btn" OnClick="Number_Click" /></div>
                    <div class="col-3"><asp:Button ID="btn8" runat="server" Text="8" CssClass="btn btn-light calc-btn" OnClick="Number_Click" /></div>
                    <div class="col-3"><asp:Button ID="btn9" runat="server" Text="9" CssClass="btn btn-light calc-btn" OnClick="Number_Click" /></div>
                    <div class="col-3"><asp:Button ID="btnDivide" runat="server" Text="÷" CssClass="btn btn-warning calc-btn" OnClick="Operator_Click" /></div>
                </div>

                <div class="row">
                    <!-- Second row -->
                    <div class="col-3"><asp:Button ID="btn4" runat="server" Text="4" CssClass="btn btn-light calc-btn" OnClick="Number_Click" /></div>
                    <div class="col-3"><asp:Button ID="btn5" runat="server" Text="5" CssClass="btn btn-light calc-btn" OnClick="Number_Click" /></div>
                    <div class="col-3"><asp:Button ID="btn6" runat="server" Text="6" CssClass="btn btn-light calc-btn" OnClick="Number_Click" /></div>
                    <div class="col-3"><asp:Button ID="btnMultiply" runat="server" Text="×" CssClass="btn btn-warning calc-btn" OnClick="Operator_Click" /></div>
                </div>

                <div class="row">
                    <!-- Third row -->
                    <div class="col-3"><asp:Button ID="btn1" runat="server" Text="1" CssClass="btn btn-light calc-btn" OnClick="Number_Click" /></div>
                    <div class="col-3"><asp:Button ID="btn2" runat="server" Text="2" CssClass="btn btn-light calc-btn" OnClick="Number_Click" /></div>
                    <div class="col-3"><asp:Button ID="btn3" runat="server" Text="3" CssClass="btn btn-light calc-btn" OnClick="Number_Click" /></div>
                    <div class="col-3"><asp:Button ID="btnSubtract" runat="server" Text="−" CssClass="btn btn-warning calc-btn" OnClick="Operator_Click" /></div>
                </div>

                <div class="row">
                    <!-- Fourth row -->
                    <div class="col-3"><asp:Button ID="btn0" runat="server" Text="0" CssClass="btn btn-light calc-btn" OnClick="Number_Click" /></div>
                    <div class="col-3"><asp:Button ID="btnDot" runat="server" Text="." CssClass="btn btn-light calc-btn" OnClick="Number_Click" /></div>
                    <div class="col-3"><asp:Button ID="btnClear" runat="server" Text="C" CssClass="btn btn-danger calc-btn" OnClick="btnClear_Click" /></div>
                    <div class="col-3"><asp:Button ID="btnAdd" runat="server" Text="+" CssClass="btn btn-warning calc-btn" OnClick="Operator_Click" /></div>
                </div>

                <div class="row mt-2">
                    <div class="col-12">
                        <asp:Button ID="btnEquals" runat="server" Text="=" CssClass="btn btn-success calc-btn" OnClick="btnEquals_Click" />
                    </div>
                </div>

            </div>
        </div>
    </div>
         </div>
</asp:Content>
