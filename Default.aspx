<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ViewStateRepro._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Button (Javascript)" OnClientClick="Navigate()" />
        </div>
    </form>
    <script type="text/javascript">
      function Navigate() {
         document.forms[0].target = "test";
         document.forms[0].action = "WebForm1";
         document.forms[0].submit();
      }    
    </script>
</body>
</html>
