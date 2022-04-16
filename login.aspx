
 <%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="HWlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="box" action="login.aspx" method="post">
         <h1>LOGIN</h1>
                <asp:TextBox ID="TextBoxUsername" runat="server"  placeholder="user name"></asp:TextBox>         
         <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" placeholder="password"></asp:TextBox>
  <asp:Button ID="Buttonsubmit" class="btn btn-success" OnClick="Buttonsubmit_Click" runat="server" Text="Login" BackColor="black" Font-Bold="true" forecolor="red" font-weight=bold />
                <asp:Label ID="LabelMessage" runat="server" Text="" ForeColor="red" Font-Size="Small"></asp:Label>
     </div>
      <style>
          .box{
             background-color:black;
              min-height:50vh;
              width:50%;
              border-radius:30px;
              box-shadow:5px 5px 6px rgb(255, 0, 0),-5px -5px 6px rgb(255, 0, 0);
              justify-content:center;
              align-items:center;
              margin-left:250px;

          }
        
        
        .box h1{
            color:aqua;
            margin-left:auto;
            font-weight:500;

        }
        .box input[type="text"],.box input[type="password"]
        {
            border:0;
            background:none;
            display:block;
            margin:20px auto;
            text-align:center;
            border:2px solid #3498db;
            padding:14px 40px;
            width:200px;
            outline:none;
            color:white;
            border-radius:24px;
            transition:0.25s;
            cursor:pointer;
            
        }
        .box h1{
            color:aqua;
            text-align:center;
            text-transform:uppercase;
            font-weight:500;
        }
        .box input[type="text"]:focus,.box input[type="password"]
        {
            width:200px;
            border-color:#2ecc71;
        }
        .box input[type="submit"]{
            background:none;
            background:none;
            display:block;
            margin:20px auto;
            text-align:center;
            border:2px solid #3498db;
            padding:14px 40px;
            width:200px;
            outline:none;
            color:white;
            border-radius:24px;
            transition:0.25s;
            cursor:pointer;

        }
        .box input[type="submit"]:hover{
            background:#2ecc71;
          background-color:aqua;
        }
    </style>
    
</asp:Content>
