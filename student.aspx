<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="Task1_student_data.Student_data" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Information</title>
     <style type="text/css">  
    .list  
    {  
        position:absolute;  
        top:50px;  
        left:150px;  
        right:400px;  
        height:500px;  
        bottom:100px;  
        background-color:pink;  
        }  
           </style> 
</head>
<body>
    <form id="form1" runat="server">
        <div class="list">
            <asp:DropDownList ID="listDropDown"   runat="server" Width="220px" BackColor="aqua" ></asp:DropDownList>
            <h2 id="student-data">Please Select the student</h2>
        </div>
    </form>
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
        const studentList = document.getElementById("StudentListDropDown");
        studentList.addEventListener("change", () => {
            var studentName = studentList.value;
            $.ajax({
                url: 'student.aspx/GetStudentData',
                type: 'post',
                data: JSON.stringify({ "name": studentName }),
                contentType: 'application/json',
                async: true,
                success: function (data) {
                    var html = `Student Name: ${data.d.Name} <br><hr> Stuent RollNo: ${data.d.RollNo} <br><hr> Student Address: ${data.d.Address} `
                    $("#student-data").html(html)
                    console.log(data)
                }
            });
            console.log("Ajax ran");
        })
    </script>
</body>
</html>
