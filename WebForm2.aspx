<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Assignment_3_TASK3.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>WELCOME</title>
    <!-- This is my styling classes -->
     <style type="text/css">  
        body                     
        {   
        background-color:deepskyblue;  
        }  
        .main                      
    {  
        position:absolute;  
        top:150px;  
        left:150px;  
        right:150px;  
        height:150px;  
        bottom:150px;  
        background-color:white;  
        } 
        .button  
    {  
        position:absolute;  
        top:150px;  
        left:150px;  
        right:150px;  
        height:150px;  
        bottom:150px;    
        }
         </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <!-- This div is for making a banner to greet the user and welcome him  -->
            <div class="main">
            <h1 id="head" runat="server"> </h1><hr />
            <h1>Greetings from CUREMD, Have a nice day</h1><br />
                <div class="button">
                      <!-- This button is for logout the user and it will take you to the login page -->
                 <asp:Button ID="SubmitButton" runat="server" Text="Logout"   onClick="Logout"/>
                    </div>
</div>
        </div>
    </form>
</body>
</html>
