<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="repeaterPage.aspx.cs" Inherits="Hamilton.repeaterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form runat="server">
    <div class="container-fluid mt-5 mb-3" align="center">

        <h4>Data Retriving Using Repeater.</h4>
        <asp:Button runat="server" Text="Show Data" OnClick="buttonClick_Click" ID="buttonClick" class="btn btn-success" />

    </div>
        </form>

     <div class="container ">
        <div class="row ">
            <asp:Repeater ID="rpt1" runat="server">
                <ItemTemplate>
                    <div class="card col-md-6 col-lg-4">
                    <%--<div class="card-body col-lg-3 col-md-3 col-xs-6  ">--%>
                        <%--<div class="box mb-0">--%>
                        <table class="box" style="max-width: 18rem;">
                            <tr>
                                <th>Unique Id  <%#Eval("id") %></th>
                            </tr>
                            <tr>
                                <td>FirstName:</td>
                                <td><%#Eval(" FisrtName") %></td>
                            </tr>
                            <tr>
                                <td>Last Name:</td>
                                <td><%#Eval(" LastName") %></td>
                            </tr>
                            <tr>
                                <td>Address:</td>
                                <td><%#Eval(" Address") %></td>
                            </tr>
                            <tr>
                                <td>phoneNo:</td>
                                <td><%#Eval(" phoneNO") %></td>
                            </tr>
                            <tr>
                                <td>salary:</td>
                                <td><%#Eval(" salary") %></td>
                            </tr>

                        </table>
                        <%--</div>--%>
                    </div>
                </ItemTemplate>

            </asp:Repeater>
        </div>
    </div>
</asp:Content>
