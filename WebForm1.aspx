﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment_4_Task2.WebForm1"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Staff GridView</title>
    <!-- This is my styling classes -->
    <style type="text/css">  
    body{
        background-color:aquamarine
    }
    .grid                      
    {  
        position:absolute;  
         
        background-color:floralwhite;  
        }  
    #StaffTable{
        padding:21%;
    }
         </style>
</head>
<body>
    <form id="form1" runat="server">
       
        
            <!-- This is my grid of students -->
            <div class="grid"> 
                <!-- HERE I AM MAKING THE GRID AND MAKING COLOUMN NAMES AND ADDING DATA IN THE RELATED COLOMNS FROM THE SERVER -->
                 <!-- Not allowed to give comments in columns id  -->
            <asp:GridView ID="StaffTable" runat="server" Height="800px" Width="2000px" AllowPaging="True" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" CellPadding="6" ForeColor="#333333" GridLines="None" PageSize="15" OnRowCancelingEdit="StaffTableRowCancelingEdit" OnRowDeleting="StaffTableRowDeleting" OnRowEditing="StaffTableRowEditing" OnRowUpdating="StaffTableRowUpdating" AutoGenerateColumns="False" OnPageIndexChanging="StaffTablePageIndexChanging" HorizontalAlign="Center">
                <Columns>
                    
                  <asp:TemplateField HeaderText="StaffID" InsertVisible="False" SortExpression="ID">
                        <EditItemTemplate>
                          
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("staffId") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                           
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("staffId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    
                    <asp:TemplateField HeaderText="Staff Member Name" SortExpression="Name">
                        <EditItemTemplate>
                            
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                   
                    <asp:TemplateField HeaderText="Member Role" SortExpression="Role">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Role") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Role") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Member Address" SortExpression="Role">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("address") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Member Salary" SortExpression="Role">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("salary") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("salary") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                
                   <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#FFC0CB" />
                <FooterStyle BackColor="#0000FF" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#0000FF" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                
            </asp:GridView>
                <!-- I had given staff id staff name role address and salary as entries   -->
                 <!-- This part is for the styling of grid table each row and column you can change it accordingly -->
             <!-- grid view ends here -->

        </div>
    </form>
</body>
</html>