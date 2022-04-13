<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="hwadmin.aspx.cs" Inherits="HWadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <divclass="whole-input">
        <h4 style="text-align: center; margin-top: 30px; padding-left:60px; color:white;">Admin Panel</h4><br />
         <br />
    <div class="row">
  <div class="col" style="border-width: medium; border-style: outset; font-family: 'Copperplate Gothic Light'; font-size: medium; background-color: #000000; background-repeat: repeat; color: #00FFFF; font-weight: 100;">
<div class="row" style="border-width: medium; border-style: none; font-family: 'Copperplate Gothic Light'; font-size: medium; color: #00FFFF; margin-bottom: 25px;">
     <asp:Label ID="LabelDefaultaText1" runat="server" Text="Default Text 1" for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg" ForeColor="Red"></asp:Label>
  <div class="col" style="font-family: 'Copperplate Gothic Light'; color: #00FFFF;">
      <asp:TextBox ID="TextBoxDefaultText1" class="form-control" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Outset" ForeColor="#CC0000" Height="35px" Width="445px"></asp:TextBox>
  </div>
</div>
        <asp:Label ID="LabelDefaultText2" for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg" runat="server" Text="Default Text 2" ForeColor="Red"></asp:Label>
       <asp:TextBox ID="TextBoxDefaultText2" type="text" class="form-control form-control-lg" placeholder="Default Text 2" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Outset" ForeColor="Red" Height="35px" Width="435px"></asp:TextBox>
</div>
</div>
         <br />
          <div class="row" style="border-width: medium; font-family: 'Copperplate Gothic Light'; font-size: medium; color: #00FFFF; background-color: #000000; background-repeat: repeat; border-style: outset; padding: inherit">
            <asp:Label ID="LabelHeaderText" for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg" runat="server" Text="Header Text" ForeColor="Red"></asp:Label>
            <div class="col-sm-10" style="border-style: none; margin-bottom: 25px; color: #00FFFF;">
                <asp:TextBox ID="TextBoxHeaderText" type="text" class="form-control form-control-lg" placeholder="Header Text" runat="server" BackColor="Black" BorderColor="Black" BorderStyle="Outset" ForeColor="Red" Height="38px" Width="444px"></asp:TextBox>
            </div>
        </div>
        <br />
          <div class="row" style="border-style: outset; border-width: medium; font-family: 'Copperplate Gothic Light'; font-size: medium; background-color: #000000; color: #00FFFF;">
            <asp:Label ID="LabelFooterText" runat="server" Text="Footer Text" for="colFormLabelLg" class="col-sm-2 col-form-label col-form-label-lg" ForeColor="Red"></asp:Label>
            <div class="col-sm-10" style="border-style: none; font-family: 'Copperplate Gothic Light'; background-color: #000000; color: #00FFFF">
                <asp:TextBox ID="TextBoxFooterText" runat="server" type="text" class="form-control form-control-lg" placeholder="Footer Text" BackColor="Black" BorderColor="Black" BorderStyle="Outset" ForeColor="#FF5050" Height="35px" Width="445px"></asp:TextBox><br />
            </div>
            <div class="d-grid gap-2 col-6 mx-auto">
                <asp:Button ID="ButtonSave_click" type="button" class="btn btn-primary" runat="server" Text="Save Settings" OnClick="ButtonSave_Click" BackColor="Black" BorderColor="#66FFFF" ForeColor="#66FFFF" />
            </div>
        </div>
    

    <style>
        .row {
        
            
        }
        .whole-input {
            margin: 20px;
            margin-left:150px;
            background-color: #101010;
            margin-right:250px;
            padding-left: 200px;
            border:2px solid black;
            border-radius:10px;
             box-shadow: 10px 10px 5px grey;
            width: 870px;
            height:fit-content ;
        }
        .form-control {
            
        }
        .col-sm-2 {
            margin-top: 3px;
        }
        .d-grid {
            margin-left: 100px;
        }
        h4 {
            padding-right:400px;
        }
        .mx-auto {
            padding-bottom: 20px;
            padding-left:30px;
        }
    </style>


</asp:Content>
