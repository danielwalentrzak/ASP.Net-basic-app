<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Wyloguj" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="tytul" HeaderText="tytul" SortExpression="tytul" />
                    <asp:BoundField DataField="ocena" HeaderText="ocena" ReadOnly="True" SortExpression="ocena" />
                    <asp:BoundField DataField="nazwa" HeaderText="gatunek" SortExpression="nazwa" />
                    <asp:BoundField DataField="imie" HeaderText="imie" SortExpression="imie" />
                    <asp:BoundField DataField="nazwisko" HeaderText="nazwisko" SortExpression="nazwisko" />
                </Columns>
                <EmptyDataTemplate>
                    &nbsp;
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource2" Visible="False">
                <EditItemTemplate>
                    tytul:
                    <asp:TextBox ID="tytulTextBox" runat="server" Text='<%# Bind("tytul") %>' />
                    <br />

                    ocena:
                    <asp:TextBox ID="ocenaTextBox" runat="server" Text='<%# Bind("ocena") %>' />
                    <br />
                    uzytkownik:
                    <asp:TextBox ID="uzytkownikTextBox" runat="server" Text='<%# Bind("uzytkownik") %>' />
                    <br />

                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </EditItemTemplate>
                <InsertItemTemplate>
        

                    ocena:
                    <asp:TextBox ID="ocenka" runat="server" Text='<%# Bind("ocena") %>' />
                    <br />
                   

                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </InsertItemTemplate>
                <ItemTemplate>
                    tytul:
                    <asp:Label ID="tytulLabel" runat="server" Text='<%# Bind("tytul") %>' />
                    <br />

                    ocena:
                    <asp:Label ID="ocenaLabel" runat="server" Text='<%# Bind("ocena") %>' />
                    <br />
                    uzytkownik:
                    <asp:Label ID="uzytkownikLabel" runat="server" Text='<%# Bind("uzytkownik") %>' />
                    <br />
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projektConnectionString %>" InsertCommand="INSERT INTO oceny(ksiazka_id, uzytkownik, ocena) VALUES (@tytul, @login, @ocena)" SelectCommand="SELECT ksiazki.tytul, oceny.ocena, oceny.uzytkownik FROM oceny INNER JOIN ksiazki ON oceny.ksiazka_id = ksiazki.id where ksiazki.id=@cot and oceny.uzytkownik=@uzyt">
                <InsertParameters>
                    <asp:SessionParameter DefaultValue="" Name="tytul" SessionField="index" />
                    <asp:SessionParameter DefaultValue="" Name="login" SessionField="username" />
                    <asp:Parameter Name="ocena" />
                </InsertParameters>
                <SelectParameters>
                    <asp:SessionParameter DefaultValue="1" Name="cot" SessionField="index" />
                    <asp:SessionParameter DefaultValue="" Name="uzyt" SessionField="username" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projektConnectionString %>" SelectCommand="SELECT ksiazki.id, ksiazki.tytul, AVG(oceny.ocena) AS ocena, gatunki.nazwa, autor.imie, autor.nazwisko FROM ksiazki INNER JOIN autor ON ksiazki.autor_id = autor.id INNER JOIN gatunki ON ksiazki.gatunek_id = gatunki.id LEFT OUTER JOIN oceny ON ksiazki.id = oceny.ksiazka_id GROUP BY gatunki.nazwa, autor.imie, autor.nazwisko, ksiazki.tytul, ksiazki.id"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
