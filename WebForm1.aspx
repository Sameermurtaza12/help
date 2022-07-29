<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment_4_Task1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student GridView</title>
    <!-- This is my styling classes -->
    <style type="text/css">  
    .main                      
    {  
        position:absolute;  
        top:50px;  
        left:150px;  
        right:150px;  
        height:500px;  
        bottom:100px;  
        background-color:pink;  
        }
    .grid                      
    {  
        position:absolute;  
        top:50px;  
        left:520px;  
        right:500px;  
        height:230px;  
        bottom:150px;  
        background-color:floralwhite;  
        }  
    #StudentTable{
        padding:2%;
    }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <!-- This is my main pink class -->
        <div class="main">
            <!-- This is my grid of students -->
            <div class="grid"> 
                <!-- I give id to grid to fulfill it by server -->
            <asp:GridView ID="StudentTable" runat="server"></asp:GridView>
            </div>
        </div>
    </form>
</body>
</html>
