<%@ Page Language="C#" AutoEventWireup="true" CodeFile="logowanie.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Nick:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" ToolTip="Nick uzywany do logowania"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="Hasło:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" ToolTip="Hasło używane przy logowaniu"></asp:TextBox>
        </div>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Logowanie" />
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
        </p>
    </form>
</body>
</html>
