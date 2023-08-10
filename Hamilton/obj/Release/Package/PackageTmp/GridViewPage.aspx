<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="GridViewPage.aspx.cs" Inherits="Hamilton.GridViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">  
           
              
            .gvWidthHight {  
                overflow-y: scroll;  
                height: 420px;  
                width: 650px;
                 
            }  
        </style>  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div class="container mt-3 mb-4" align="center">
            <h4  >Data Retriving Using Grid View</h4>
            <asp:Button runat="server" Text="Show Data" ID="buttonClick" class="btn btn-success" OnClick="buttonClick_Click" />

        </div>
        <div class="container table mb-5 gvWidthHight">

            <asp:GridView ID="GridView1" runat="server" class="table table-hover" align="center" AutoGenerateColumns="false" AllowScrolling="true">
                 

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="id" ReadOnly="true" />

                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label runat='server' Text='<%#Eval("FisrtName")%>'></asp:Label>
                        </ItemTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label runat='server' Text='<%#Eval("LastName")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Address">
                        <ItemTemplate>
                            <asp:Label runat='server' Text='<%#Eval("Address")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Phone Number">
                        <ItemTemplate>
                            <asp:Label runat='server' Text='<%#Eval("phoneNO")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="salary">
                        <ItemTemplate>
                            <asp:Label runat='server' Text='<%#Eval("salary")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                 <HeaderStyle CssClass="scrolling" BackColor="#f8d7da" Font-Bold="True" ForeColor="#333333" />  
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" /> 
            </asp:GridView>
           
        </div>
    </form>

</asp:Content>
