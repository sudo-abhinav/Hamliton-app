<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Hamilton._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <%--webform start--%>
    <div class="container my-5">
        <form runat="server">
            <div class="row">
                <div class="form-group col-md-6">
                    <label for="inputEmail4">First Name</label>
                    <input runat="server" type="text" class="form-control" ID="textbox1" placeholder="First Name">
                    
                    <%-- validation start --%>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ControlToValidate="textbox1"  
            Text="required" Style="color: red"></asp:RequiredFieldValidator>  
                <%-- validation End --%>

                </div>


                



                <div class="form-group col-md-6">
                    <label for="inputPassword4">Last Name</label>

                    <input runat="server" type="text" class="form-control" ID="textbox2" placeholder="Last Name">
                    <%-- validation start --%>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ControlToValidate="textbox2"  
            Text="required" Style="color: red"></asp:RequiredFieldValidator>  
                <%-- validation End --%>
                </div>
            </div>

            <div class="form-group " >
                <label for="inputAddress">Address</label>
                <input runat="server" type="text" class="form-control" id="textbox3" placeholder="Address">

                <%-- validation start --%>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ControlToValidate="textbox3"  
            Text="required" Style="color: red"></asp:RequiredFieldValidator>  
                <%-- validation End --%>
            </div>

        <div class="row">
            <div class="form-group col-md-6">
                <label for="inputAddress">Salary</label>
                <input runat="server" type="text" class="form-control" id="textbox4" placeholder="salary">
                
                <%-- validation start --%>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ControlToValidate="textbox4"  
            Text="required" Style="color: red"></asp:RequiredFieldValidator>  
                <%-- validation End --%>
            </div>
            <div class="form-group col-md-6">
                <label for="inputAddress">Phone Number</label>
                <input  runat="server" type="text" class="form-control" id="textbox5" placeholder="Phone Number">
                
                 <%-- validation start --%>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ControlToValidate="textbox5"  
            Text="required" Style="color: red"></asp:RequiredFieldValidator>  
                <%-- validation End --%>
            </div>
            </div>

            <div class="text-center">

                <asp:Button runat="server" ID="button1" class="btn mt-3 btn-primary" Text="submit" OnClick="button1_Click" />


               
               
               
            </div>
        
         <asp:Label ID="label1" runat="server" class="" Text=""></asp:Label>
        </form>

    </div>
    <%--webform end--%>

</asp:Content>
