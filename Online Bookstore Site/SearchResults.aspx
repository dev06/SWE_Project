<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SearchResults.aspx.cs" Inherits="SearchResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style7 {
            width: 1396px;
            height: 143px;
        }
        .auto-style35 {
            width: 34px;
            height: 36px;
        }
        .auto-style39 {
            height: 35px;
        }
        .auto-style41 {
            height: 36px;
        }
        .auto-style46 {
            width: 174px;
            height: 77px;
        }
        .auto-style47 {
            width: 174px;
            height: 36px;
        }
        .auto-style49 {
            width: 67px;
            height: 36px;
        }
        .auto-style52 {
            width: 174px;
        }
        .auto-style53 {
            margin-left: 27px;
        }
        .auto-style56 {
            margin-left: 0px;
        }
        .auto-style57 {
            width: 100%;
            margin-left: 39px;
            height: 56px;
        }
        .auto-style58 {
            height: 26px;
        }
        .auto-style62 {
            margin-left: 25px;
        }
        .auto-style63 {
            height: 255px;
        }
        .auto-style64 {
            margin-top: 0px;
        }
        .auto-style68 {
            height: 41px;
        }
        .auto-style80 {
            height: 97px;
        }
        .auto-style88 {
            width: 143px;
            height: 36px;
        }
        .auto-style90 {
            height: 36px;
            width: 22px;
        }
        .auto-style91 {
            margin-left: 16px;
        }
        .auto-style94 {
            width: 1388px;
            height: 250px;
        }
        .auto-style96 {
            width: 197px;
        }
        .auto-style99 {
            height: 105px;
            width: 198px;
        }
        .auto-style100 {
            height: 105px;
            width: 197px;
        }
        .auto-style101 {
            width: 360px;
            height: 52px;
        }
        .auto-style103 {
            width: 146px;
            height: 224px;
            margin-left: 29px;
        }
        .auto-style104 {
            width: 259px;
        }
    </style>
</head>
<body style="height: 247px; position: absolute; width: 1396px; left: -2px; top: 2px">
    <form id="form1" runat="server" class="auto-style63">
        <table class="auto-style7">
            <tr>
                <td class="auto-style52" rowspan="3">
        <asp:Image ID="Image1" runat="server" Height="85px" ImageUrl="~/ksu logo.png" style="text-align: center" Width="307px" />
                </td>
                <td class="auto-style46" rowspan="2">&nbsp;</td>
                <td class="auto-style39" colspan="4"></td>
            </tr>
            <tr>
                <td class="auto-style35" colspan="2"></td>
                <td class="auto-style90">
                    <asp:Button ID="SearchLogin" runat="server" Text="Login" Width="157px" CssClass="auto-style56" Height="44px" OnClick="SearchLogin_Click" PostBackUrl="~/LoginPage.aspx" />
                </td>
                <td class="auto-style41">
        <asp:ImageButton ID="ShoppingCartButton" runat="server" OnClick="ShoppingCartButtonClick" style="text-align: right; " Width="41px" Height="45px" ImageUrl="~/Cart Icon.png" ImageAlign="Left" CssClass="auto-style91" />
                </td>
            </tr>
            <tr>
                <td class="auto-style47"></td>
                <td class="auto-style49">
                    <asp:Button ID="SearchHome" runat="server" Text="Home" Height="44px" OnClick="SearchHome_Click" Width="157px" />
                </td>
                <td class="auto-style88">
                    <asp:Button ID="SearchContactUs" runat="server" Text="Contact us" Height="44px" OnClick="SearchContactUs_Click" Width="157px" />
                </td>
                <td class="auto-style90">
                    <asp:Button ID="SearchAboutUs" runat="server" OnClick="SearchAboutUsClick" Text="About us" CssClass="auto-style56" Height="44px" Width="157px" />
                </td>
                <td class="auto-style41"></td>
            </tr>
            <tr>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style47">&nbsp;</td>
                <td class="auto-style41" colspan="4">&nbsp;</td>
            </tr>
        </table>
        <hr />
        <table class="auto-style57">
            <tr>
                <td class="auto-style58">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="False" Font-Size="Large" Text="Search"></asp:Label>
                    <asp:DropDownList ID="SearchTypeDropDown" runat="server" AutoPostBack="True" OnSelectedIndexChanged="SearchTypeDropDown_SelectedIndexChanged" CssClass="auto-style62">
                             <asp:ListItem>Search by Keyword</asp:ListItem>
                             <asp:ListItem>Search by Course</asp:ListItem>
                             <asp:ListItem>Search by Professor</asp:ListItem>
                        </asp:DropDownList>
                    <asp:DropDownList ID="ProfessorDropdown" runat="server" CssClass="auto-style53" OnSelectedIndexChanged="ProfessorDropdown_SelectedIndexChanged" AppendDataBoundItems="True">
                     <asp:ListItem>Andrew McMorran</asp:ListItem>
                           <asp:ListItem>Choose a Professor</asp:ListItem>
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
                    <asp:DropDownList ID="CourseDropdown" runat="server" CssClass="auto-style62" OnSelectedIndexChanged="CourseDropdown_SelectedIndexChanged">
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
                    <asp:TextBox ID="SearchTextBar" runat="server" CssClass="auto-style62"></asp:TextBox>
        <asp:ImageButton ID="SearchButton" runat="server" Height="25px" Width="26px" ImageUrl="~/Magnifying Glass.png" OnClick="SearchButton_Click" CssClass="auto-style62" />
                </td>
            </tr>
        </table>
        <hr class="auto-style64" />






        
       <%-- PANEL 1 --%>




        <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" Height="250px">
            <table class="auto-style94">
                <tr>
                    <td class="auto-style104" rowspan="4">
                        <img alt="" class="auto-style103" src="bookImages/978-0073376356.jpg" />
                    </td>
                    <td class="auto-style68" colspan="6">
                        <asp:Label ID="Title" runat="server" Text="Basics of Engineering Economy 2nd Edition"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style101">
                        <asp:Label ID="Author" runat="server" Text="By Leland Blank"></asp:Label>
                    </td>
                    <td rowspan="2" class="auto-style96" colspan="1">BookType<br /> Price<br /> Quantity</td>
                    <td class="auto-style100" rowspan="2">
                        <asp:Button ID="New" runat="server" Height="88px" OnClick="NewButtonPressed" Text="New" Width="191px" Font-Names="Arial,asdf" Font-Overline="False" Font-Size="Small" Font-Strikeout="False" Font-Underline="False" />
                    </td>
                    <td class="auto-style100" rowspan="2">
                        <asp:Button ID="Used" runat="server" Height="88px"  OnClick="UsedButtonPressed" Text="Used" Width="191px" />
                    </td>
                    <td class="auto-style100" rowspan="2">
                        <asp:Button ID="Rental" runat="server" Height="88px"  OnClick="RentButtonPressed" Text="Rental" Width="191px" />
                    </td>
                    <td class="auto-style99" rowspan="2">
                        <asp:Button ID="Ebook" runat="server" Height="88px" OnClick="EbookButtonPressed" Text="EBook" Width="191px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style101">
                        <asp:Label ID="ISBN" runat="server" Text="978-0073376356"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style80" colspan="6">
                        <asp:Label ID="Description" runat="server" Text="This text covers the basic techniques and applications of engineering economy for all disciplines in the engineering profession. "></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>



        <hr />

       <%-- PANEL 2 --%>

        

        
       <%-- PANEL 3 --%>
        
       <%-- PANEL 4 --%>
        
       <%-- PANEL 5 --%>
        
       <%-- PANEL 6 --%>
        
       <%-- PANEL 7 --%>


    </form>
</body>
</html>
