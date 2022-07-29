<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Assignment_3_TASK3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LOGIN PAGE</title>
    <!-- This is my styling classes -->
     <style type="text/css">  
    .main                      
    {  
        position:absolute;  
        top:50px;  
        left:150px;  
        right:400px;  
        height:500px;  
        bottom:100px;  
        background-color:deepskyblue;  
        }  
    .input  
    {  
        position:absolute;  
        top:50px;  
        left:150px;  
        right:400px;  
        height:500px;  
        bottom:100px;    
        }  
    .button  
    {  
        position:absolute;  
        top:50px;  
        left:200px;  
        right:300px;  
        height:500px;  
        bottom:150px;    
        }
         </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <!-- This is my main div  -->
            <div class="main">  
        <asp:Label for="l" Text="MY LOGIN SYSTEM" runat="server" Style="margin-left: 200px"  ></asp:Label><hr />  
                 <!-- This div is for taking input -->
            <div class="input">   
                <!-- This div is for taking user name -->
            <asp:Label for="labelId" runat="server" >userName</asp:Label> 
            <asp:TextBox ID="value1" runat="server" ToolTip="enter a valid name"></asp:TextBox><br />
                <!-- This div is for taking password -->
                <asp:Label for="labelId" runat="server" >password</asp:Label> 
            <asp:TextBox ID="value2" runat="server" ToolTip="enter a valid password"></asp:TextBox><br />
                 <div class="button">
                    <!-- This button is for only login and it will also call validateinfo function -->
                    <asp:Button ID="SubmitButton" runat="server" Text="Login" Style="margin-right: 40px " OnClientClick="javascript : return ValidateInfo()"  onClick="Login"/><br />
                     </div>
                </div>
                </div>
                
        </div>
        <script>   <!-- This is my function for validation it will accept the user name and password and check if it is empty or not equal to polar and vezli and throw error accordingly-->
            function ValidateInfo() {
                var name = $("#value1").val();   
                var password = $("#value2").val();
                try {
                    if (name == "" || name != "polar") throw "empty or invalid input in UserName field"
                    if (password == "" || password != "vezli") throw "empty or invalid input in UserName field"
                    return true
                }
                catch (err) {
                    window.alert(err)
                    return false
                }
            }
        </script>
    </form>
</body>
</html>
