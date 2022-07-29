<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CarNameSearch.aspx.cs" Inherits="CarNameSearch.CarNameSearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">  
    body  
    {  
        position:relative;   
        background-color:pink;  
        }
    .in  
    {  
        position:absolute;  
        top:150px;  
        left:250px;  
        right:400px;  
        height:500px;  
        bottom:100px;  
        background-color:darkgray;  
        }  
           </style> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="in">
           
            <asp:TextBox ID="input" runat="server"></asp:TextBox>
            <asp:DropDownList  ID="carsDropdown" runat="server"></asp:DropDownList>
               
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
        const inputCar = document.getElementById("input");
        inputCar.addEventListener("input", () => {
            if (!inputCar.value) {
                return
            }
            else {
                $.ajax({
                    url: 'CarNameSearch.aspx/SuggesstionsGenerator',
                    type: 'post',
                    data: JSON.stringify({ "name": $("#input").val() }),

                    contentType: 'application/json',
                    success: function (data) {
                        console.log(data.d)

                        var select = document.getElementById("carsDropdown");
                        $("#carsDropdown").empty()
                        var options = data.d
                        for (var i = 0; i < options.length; i++) {
                            var opt = options[i];
                            var el = document.createElement("option");
                            el.textContent = opt;
                            el.value = opt;
                            select.appendChild(el);
                        }
                    }
                });
            }
            console.log(inputCar.value);
            console.log("Ajax ran");
        })

    </script>
</body>
</html>

