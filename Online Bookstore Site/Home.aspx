<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 710px;
        }
        .auto-style2 {
            width: 41px;
        }
        .auto-style3 {
            width: 393px;
        }
        .auto-style6 {
            width: 267px;
            height: 26px;
        }
        .auto-style7 {
            width: 710px;
            height: 23px;
        }
        .auto-style8 {
            width: 41px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 41px;
            text-align: center;
        }
        .auto-style11 {
            height: 10px;
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            width: 44px;
            height: 10px;
        }
        .auto-style14 {
            width: 165px;
            height: 10px;
            text-align: right;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width:100%;">
            <tr>
                <td class="auto-style3" rowspan="2">
        <asp:Image ID="Image1" runat="server" Height="85px" ImageUrl="~/ksu logo.png" style="text-align: center" Width="411px" />
                </td>
                <td class="auto-style14">
                    <asp:HyperLink ID="LoginLabel" runat="server" NavigateUrl="~/LoginPage.aspx">Login</asp:HyperLink>
                </td>
                <td class="auto-style13">
                    <asp:Button ID="LogoutButton" runat="server" BackColor="White" BorderStyle="None" Font-Names="Times New Roman" Font-Size="Medium" Font-Underline="True" ForeColor="#0000FF" OnClick="LogoutButton_Click" Text="Logout" />
                </td>
                <td class="auto-style10" rowspan="2">
        <asp:ImageButton ID="ShoppingCartButton" runat="server" OnClick="ImageButton1_Click" style="text-align: right; margin-left: 0px;" Width="41px" Height="45px" ImageUrl="~/Cart Icon.png" />
                </td>
                <td class="auto-style11">
                    <br />
                    <asp:Label ID="CartTotal" runat="server" Text="$0"></asp:Label>
                    <br />
                    <asp:Label ID="CartQuantity" runat="server" Text="Qty: 0"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" colspan="2">&nbsp;&nbsp; <a href="Home.aspx">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="ContactUsPage.aspx">Contact Us</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; About&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7" colspan="3"></td>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style1" colspan="3">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p style="margin-left: 120px">
        &nbsp;</p>
    <p style="margin-left: 40px">
        Search:&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="SearchByDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SearchByDropDown_SelectedIndexChanged">
            <asp:ListItem>Professor</asp:ListItem>
            <asp:ListItem>Course</asp:ListItem>
            <asp:ListItem>Keyword</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="TeacherDropDownList" runat="server" Height="16px" Width="146px" OnSelectedIndexChanged="TeacherDropDownList_SelectedIndexChanged">
            <asp:ListItem>Choose a Professor</asp:ListItem>
            <asp:ListItem>Andrew McMorran</asp:ListItem>
            <asp:ListItem>Bates</asp:ListItem>
            <asp:ListItem>Bob Brown</asp:ListItem>
            <asp:ListItem>Buddie</asp:ListItem>
            <asp:ListItem>Charlotte Stephenson</asp:ListItem>
            <asp:ListItem>Dan C. Lo</asp:ListItem>
            <asp:ListItem>Daniel R. Ferreira</asp:ListItem>
            <asp:ListItem>Dover</asp:ListItem>
            <asp:ListItem>Stacey Mitchell</asp:ListItem>
            <asp:ListItem>Eybelman</asp:ListItem>
            <asp:ListItem>Feito</asp:ListItem>
            <asp:ListItem>Frederick A. Tookes</asp:ListItem>
            <asp:ListItem>Henricks</asp:ListItem>
            <asp:ListItem>Inman</asp:ListItem>
            <asp:ListItem>Jennifer R. Louten</asp:ListItem>
            <asp:ListItem>John F. Stanislawski</asp:ListItem>
            <asp:ListItem>Jonathan Lartigue</asp:ListItem>
            <asp:ListItem>Joseph N Fadyn</asp:ListItem>
            <asp:ListItem>Jung E</asp:ListItem>
            <asp:ListItem>Kai Qian</asp:ListItem>
            <asp:ListItem>Karim M</asp:ListItem>
            <asp:ListItem>Lefebvre</asp:ListItem>
            <asp:ListItem>Lowder M</asp:ListItem>
            <asp:ListItem>Manijeh Chavoshi</asp:ListItem>
            <asp:ListItem>Meng</asp:ListItem>
            <asp:ListItem>Micheal B. Beach</asp:ListItem>
            <asp:ListItem>Molly Brodak</asp:ListItem>
            <asp:ListItem>Payne</asp:ListItem>
            <asp:ListItem>Phillip M. Harrold (P)</asp:ListItem>
            <asp:ListItem>Rajnish Singh</asp:ListItem>
            <asp:ListItem>Richard Gesick</asp:ListItem>
            <asp:ListItem>Roger Soiset</asp:ListItem>
            <asp:ListItem>Shannon Shumate</asp:ListItem>
            <asp:ListItem>Tarvin</asp:ListItem>
            <asp:ListItem>Tsai-Tien Tseng</asp:ListItem>
            <asp:ListItem>Veazie D</asp:ListItem>
            <asp:ListItem>Wierra M. Flores</asp:ListItem>
            <asp:ListItem>Zeynep Arzu Kelani</asp:ListItem>
        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="CourseDropDownList" runat="server" Height="16px" Width="146px">
            <asp:ListItem>Choose a Course</asp:ListItem>
            <asp:ListItem>ARTS 2001</asp:ListItem>
            <asp:ListItem>ARTS 2002</asp:ListItem>
            <asp:ListItem>BIOC 3111K</asp:ListItem>
            <asp:ListItem>BIOL 3000</asp:ListItem>
            <asp:ListItem>CHEM 1151</asp:ListItem>
            <asp:ListItem>CHEM 1212</asp:ListItem>
            <asp:ListItem>CHNS 2001</asp:ListItem>
            <asp:ListItem>CS 2301</asp:ListItem>
            <asp:ListItem>CS 3153</asp:ListItem>
            <asp:ListItem>CS 3224</asp:ListItem>
            <asp:ListItem>CS 4263</asp:ListItem>
            <asp:ListItem>CSE 1001</asp:ListItem>
            <asp:ListItem>CSE 1302 C</asp:ListItem>
            <asp:ListItem>CSE 3153</asp:ListItem>
            <asp:ListItem>CSE 3642</asp:ListItem>
            <asp:ListItem>ECON 1101</asp:ListItem>
            <asp:ListItem>ECON 2101</asp:ListItem>
            <asp:ListItem>ECON 2107</asp:ListItem>
            <asp:ListItem>EDUC 2120</asp:ListItem>
            <asp:ListItem>ENGL 0099</asp:ListItem>
            <asp:ListItem>ENGL 1102</asp:ListItem>
            <asp:ListItem>ENGL 2130</asp:ListItem>
            <asp:ListItem>ENGL 3122</asp:ListItem>
            <asp:ListItem>ENGR 3125</asp:ListItem>
            <asp:ListItem>ENGR 3343</asp:ListItem>
            <asp:ListItem>ENGR 4600</asp:ListItem>
            <asp:ListItem>ENVS 2202K</asp:ListItem>
            <asp:ListItem>ES 2100</asp:ListItem>
            <asp:ListItem>GRAD 9001</asp:ListItem>
            <asp:ListItem>HIST 1110</asp:ListItem>
            <asp:ListItem>HIST 1111</asp:ListItem>
            <asp:ListItem>IT 4823</asp:ListItem>
            <asp:ListItem>LATN 1002</asp:ListItem>
            <asp:ListItem>MATH 1113</asp:ListItem>
            <asp:ListItem>MATH 2260</asp:ListItem>
            <asp:ListItem>NURS 3302</asp:ListItem>
            <asp:ListItem>POLS 1101</asp:ListItem>
            <asp:ListItem>STS 2400</asp:ListItem>
            <asp:ListItem>SWE 2313</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="SearchBox" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="SearchButton" runat="server" Height="25px" Width="26px" ImageUrl="~/Magnifying Glass.png" OnClick="SearchButton_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="ErrorLabel" runat="server" Font-Bold="True" ForeColor="Red" Text="*Error*"></asp:Label>
        </p>
    </form>
    </body>
</html>
