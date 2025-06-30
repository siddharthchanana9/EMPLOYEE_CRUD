<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="CRUD_EMPLOYEE.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CRUD GridView Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" AllowPaging="True" ShowFooter="True">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />

                    <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label runat="server" Text='<%# Eval("Id") %>' ID="Label1"></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("Id") %>' ID="Label1"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Insert" CausesValidation="true" ValidationGroup="InsertGroup" OnClick="InsertRecord" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditName" runat="server" ControlToValidate="TextBox3" ErrorMessage="Name is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("Name") %>' ID="Label2"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="FooterName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvFooterName" runat="server" ControlToValidate="FooterName" ValidationGroup="InsertGroup" ErrorMessage="Name is required" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("Email") %>' ID="TextBox2"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditEmail" runat="server" ControlToValidate="TextBox2" ErrorMessage="Email is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("Email") %>' ID="Label3"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="FooterEmail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvFooterEmail" runat="server" ControlToValidate="FooterEmail" ValidationGroup="InsertGroup" ErrorMessage="Email is required" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Gender" SortExpression="Gender">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" Text='<%# Bind("Gender") %>'>
                                <asp:ListItem>Select Gender</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:CompareValidator ID="cvEditGender" runat="server" ControlToValidate="DropDownList1" ValueToCompare="Select Gender" Operator="NotEqual" Type="String" ErrorMessage="Gender is required" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("Gender") %>' ID="Label4"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:DropDownList ID="FooterDdlGender" runat="server">
                                <asp:ListItem>Select Gender</asp:ListItem>
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                            <asp:CompareValidator ID="cvFooterGender" runat="server" ControlToValidate="FooterDdlGender" ValueToCompare="Select Gender" Operator="NotEqual" Type="String" ValidationGroup="InsertGroup" ErrorMessage="Gender is required" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Age" SortExpression="Age">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("Age") %>' ID="TextBox4"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditAge" runat="server" ControlToValidate="TextBox4" ErrorMessage="Age is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("Age") %>' ID="Label5"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="FooterAge" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvFooterAge" runat="server" ControlToValidate="FooterAge" ValidationGroup="InsertGroup" ErrorMessage="Age is required" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" />
                        </FooterTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Salary" SortExpression="Salary">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("Salary") %>' ID="TextBox5"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditSalary" runat="server" ControlToValidate="TextBox5" ErrorMessage="Salary is required" ForeColor="Red" Display="Dynamic" SetFocusOnError="true" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Bind("Salary") %>' ID="Label6"></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="FooterSalary" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvFooterSalary" runat="server" ControlToValidate="FooterSalary" ValidationGroup="InsertGroup" ErrorMessage="Salary is required" Display="Dynamic" ForeColor="Red" SetFocusOnError="true" />
                        </FooterTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>"
                SelectCommand="SELECT * FROM [Employee]"
                DeleteCommand="DELETE FROM [Employee] WHERE [Id] = @Id"
                InsertCommand="INSERT INTO [Employee] ([Name], [Email], [Gender], [Age], [Salary]) VALUES (@Name, @Email, @Gender, @Age, @Salary)"
                UpdateCommand="UPDATE [Employee] SET [Name] = @Name, [Email] = @Email, [Gender] = @Gender, [Age] = @Age, [Salary] = @Salary WHERE [Id] = @Id">

                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Salary" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Age" Type="Int32" />
                    <asp:Parameter Name="Salary" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
