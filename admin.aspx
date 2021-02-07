<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Wyloguj" />
            <asp:Label ID="Label4" runat="server" Text="gatuenk tabela"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="nazwa" HeaderText="nazwa" SortExpression="nazwa" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <asp:FormView ID="formgatunek" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Both">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    nazwa:
                    <asp:TextBox ID="nazwaTextBox" runat="server" Text='<%# Bind("nazwa") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    nazwa:
                    <asp:TextBox ID="nazwaTextBox" runat="server" Text='<%# Bind("nazwa") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    nazwa:
                    <asp:Label ID="nazwaLabel" runat="server" Text='<%# Bind("nazwa") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                </ItemTemplate>
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
            </asp:FormView>

            <asp:Label ID="Label2" runat="server" Text="autor tabela"></asp:Label>
                        
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="imie" HeaderText="imie" SortExpression="imie" />
                    <asp:BoundField DataField="nazwisko" HeaderText="nazwisko" SortExpression="nazwisko" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:FormView ID="Formautor" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    imie:
                    <asp:TextBox ID="imieTextBox" runat="server" Text='<%# Bind("imie") %>' />
                    <br />
                    nazwisko:
                    <asp:TextBox ID="nazwiskoTextBox" runat="server" Text='<%# Bind("nazwisko") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    imie:
                    <asp:TextBox ID="imieTextBox" runat="server" Text='<%# Bind("imie") %>' />
                    <br />
                    nazwisko:
                    <asp:TextBox ID="nazwiskoTextBox" runat="server" Text='<%# Bind("nazwisko") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    imie:
                    <asp:Label ID="imieLabel" runat="server" Text='<%# Bind("imie") %>' />
                    <br />
                    nazwisko:
                    <asp:Label ID="nazwiskoLabel" runat="server" Text='<%# Bind("nazwisko") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                </ItemTemplate>
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:projektConnectionString %>" DeleteCommand="DELETE FROM [autor] WHERE [id] = @id" InsertCommand="INSERT INTO [autor] ([imie], [nazwisko]) VALUES (@imie, @nazwisko)" SelectCommand="SELECT * FROM [autor]" UpdateCommand="UPDATE [autor] SET [imie] = @imie, [nazwisko] = @nazwisko WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="imie" Type="String" />
                    <asp:Parameter Name="nazwisko" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="imie" Type="String" />
                    <asp:Parameter Name="nazwisko" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label3" runat="server" Text="uzytkownik tabela"></asp:Label>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="nick" DataSourceID="SqlDataSource3" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="nick" HeaderText="nick" ReadOnly="True" SortExpression="nick" />
                    <asp:BoundField DataField="haslo" HeaderText="haslo" SortExpression="haslo" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#487575" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#275353" />
            </asp:GridView>
            <asp:FormView ID="formuzytkownicy" runat="server" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="nick" DataSourceID="SqlDataSource3" GridLines="Horizontal" style="margin-top: 0px">
                <EditItemTemplate>
                    nick:
                    <asp:Label ID="nickLabel1" runat="server" Text='<%# Eval("nick") %>' />
                    <br />
                    haslo:
                    <asp:TextBox ID="hasloTextBox" runat="server" Text='<%# Bind("haslo") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    nick:
                    <asp:TextBox ID="nickTextBox" runat="server" Text='<%# Bind("nick") %>' />
                    <br />
                    haslo:
                    <asp:TextBox ID="hasloTextBox" runat="server" Text='<%# Bind("haslo") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </InsertItemTemplate>
                <ItemTemplate>
                    nick:
                    <asp:Label ID="nickLabel" runat="server" Text='<%# Eval("nick") %>' />
                    <br />
                    haslo:
                    <asp:Label ID="hasloLabel" runat="server" Text='<%# Bind("haslo") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                </ItemTemplate>
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:projektConnectionString %>" DeleteCommand="DELETE FROM [uzytkownicy] WHERE [nick] = @nick" InsertCommand="INSERT INTO [uzytkownicy] ([nick], [haslo]) VALUES (@nick, @haslo)" SelectCommand="SELECT * FROM [uzytkownicy]" UpdateCommand="UPDATE [uzytkownicy] SET [haslo] = @haslo WHERE [nick] = @nick">
                <DeleteParameters>
                    <asp:Parameter Name="nick" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nick" Type="String" />
                    <asp:Parameter Name="haslo" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="haslo" Type="String" />
                    <asp:Parameter Name="nick" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </br>
            <asp:Label ID="Label1" runat="server" Text="Ksiazki tabela"></asp:Label>
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource4" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="tytul" HeaderText="tytul" SortExpression="tytul" />
                    <asp:BoundField DataField="autor_id" HeaderText="autor_id" SortExpression="autor_id" />
                    <asp:BoundField DataField="gatunek_id" HeaderText="gatunek_id" SortExpression="gatunek_id" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:FormView ID="formksiazki" runat="server" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource4" ForeColor="#333333">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    tytul:
                    <asp:TextBox ID="tytulTextBox" runat="server" Text='<%# Bind("tytul") %>' />
                    <br />
                    autor_id:
                    <asp:TextBox ID="autor_idTextBox" runat="server" Text='<%# Bind("autor_id") %>' />
                    <br />
                    gatunek_id:
                    <asp:TextBox ID="gatunek_idTextBox" runat="server" Text='<%# Bind("gatunek_id") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    tytul:
                    <asp:TextBox ID="tytulTextBox" runat="server" Text='<%# Bind("tytul") %>' />
                    <br />
                    autor_id:
                    <asp:TextBox ID="autor_idTextBox" runat="server" Text='<%# Bind("autor_id") %>' />
                    <br />
                    gatunek_id:
                    <asp:TextBox ID="gatunek_idTextBox" runat="server" Text='<%# Bind("gatunek_id") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    tytul:
                    <asp:Label ID="tytulLabel" runat="server" Text='<%# Bind("tytul") %>' />
                    <br />
                    autor_id:
                    <asp:Label ID="autor_idLabel" runat="server" Text='<%# Bind("autor_id") %>' />
                    <br />
                    gatunek_id:
                    <asp:Label ID="gatunek_idLabel" runat="server" Text='<%# Bind("gatunek_id") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edytuj" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Usuń" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Nowy" />
                </ItemTemplate>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:projektConnectionString %>" DeleteCommand="DELETE FROM [ksiazki] WHERE [id] = @id" InsertCommand="INSERT INTO [ksiazki] ([tytul], [autor_id], [gatunek_id]) VALUES (@tytul, @autor_id, @gatunek_id)" SelectCommand="SELECT * FROM [ksiazki]" UpdateCommand="UPDATE [ksiazki] SET [tytul] = @tytul, [autor_id] = @autor_id, [gatunek_id] = @gatunek_id WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="tytul" Type="String" />
                    <asp:Parameter Name="autor_id" Type="Int32" />
                    <asp:Parameter Name="gatunek_id" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tytul" Type="String" />
                    <asp:Parameter Name="autor_id" Type="Int32" />
                    <asp:Parameter Name="gatunek_id" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label5" runat="server" Text="Oceny"></asp:Label>
            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource5" OnSelectedIndexChanged="GridView5_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="ksiazka_id" HeaderText="ksiazka_id" SortExpression="ksiazka_id" />
                    <asp:BoundField DataField="uzytkownik" HeaderText="uzytkownik" SortExpression="uzytkownik" />
                    <asp:BoundField DataField="ocena" HeaderText="ocena" SortExpression="ocena" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:projektConnectionString %>" SelectCommand="SELECT * FROM [oceny]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projektConnectionString %>" DeleteCommand="DELETE FROM [gatunki] WHERE [id] = @id" InsertCommand="INSERT INTO [gatunki] ([nazwa]) VALUES (@nazwa)" SelectCommand="SELECT * FROM [gatunki]" UpdateCommand="UPDATE [gatunki] SET [nazwa] = @nazwa WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="nazwa" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nazwa" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:FormView ID="FormView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource5" GridLines="Both">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    ksiazka_id:
                    <asp:TextBox ID="ksiazka_idTextBox" runat="server" Text='<%# Bind("ksiazka_id") %>' />
                    <br />
                    uzytkownik:
                    <asp:TextBox ID="uzytkownikTextBox" runat="server" Text='<%# Bind("uzytkownik") %>' />
                    <br />
                    ocena:
                    <asp:TextBox ID="ocenaTextBox" runat="server" Text='<%# Bind("ocena") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualizuj" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    ksiazka_id:
                    <asp:TextBox ID="ksiazka_idTextBox" runat="server" Text='<%# Bind("ksiazka_id") %>' />
                    <br />
                    uzytkownik:
                    <asp:TextBox ID="uzytkownikTextBox" runat="server" Text='<%# Bind("uzytkownik") %>' />
                    <br />
                    ocena:
                    <asp:TextBox ID="ocenaTextBox" runat="server" Text='<%# Bind("ocena") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Wstaw" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Anuluj" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    ksiazka_id:
                    <asp:Label ID="ksiazka_idLabel" runat="server" Text='<%# Bind("ksiazka_id") %>' />
                    <br />
                    uzytkownik:
                    <asp:Label ID="uzytkownikLabel" runat="server" Text='<%# Bind("uzytkownik") %>' />
                    <br />
                    ocena:
                    <asp:Label ID="ocenaLabel" runat="server" Text='<%# Bind("ocena") %>' />
                    <br />

                </ItemTemplate>
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            </asp:FormView>
        </div>
    </form>
</body>
</html>
