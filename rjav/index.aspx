<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .hiddencol
        {
            display: none;
        }
        .auto-style3 {
            height: 139px;
            width: 799px;
        }
        .auto-style5 {
            width: 105px;
            height: 19px;
            position: absolute;
            left: 44px;
            top: 95px;
            right: 1075px;
        }
        .auto-style8 {
            float: right;
            width: 277px;
            height: 18px;
            position: absolute;
            left: 95px;
            top: 60px;
        }
        .auto-style9 {
            width: 67px;
            height: 14px;
            position: absolute;
            left: 16px;
            top: 165px;
            right: 931px;
        }
        .auto-style10 {
            width: 293px;
            height: 13px;
            position: absolute;
            left: 3px;
            top: 66px;
        }
        .auto-style12 {
            height: 19px;
            position: absolute;
            left: 158px;
            top: 95px;
            width: 77px;
        }
        .auto-style15 {
            float: right;
            margin-left: 16px;
        }
        .auto-style16 {
            position: absolute;
            left: -25px;
            top: 10px;
            width: 521px;
            height: 157px;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style18 {
            font-size: x-small;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }
        .auto-style19 {
            float: right;
            width: 120px;
            height: 19px;
            position: absolute;
            left: 99px;
            top: 131px;
            color: #CCCCFF;
        }
        .auto-style20 {
            width: 291px;
            height: 503px;
            position: absolute;
            left: 507px;
            top: 34px;
        }
        .auto-style22 {
            font-size: x-small;
            font-family: Verdana;
        }
        .auto-style26 {
            width: 286px;
            height: 41px;
            position: absolute;
            left: -503px;
            top: -21px;
        }
        .auto-style28 {
            width: 286px;
            height: 18px;
            position: absolute;
            left: 508px;
            top: 13px;
            color: #9999FF;
        }
        .auto-style31 {
            height: 14px;
            font-weight: bold;
            color: white;
            background-color: #000099;
        }
        .auto-style32 {
            height: 126px;
        }
        .auto-style33 {
            width: 143px;
        }
        .auto-style34 {
            color: #9999FF;
        }
        .auto-style35 {
            width: 292px;
            height: 117px;
            position: absolute;
            left: 10px;
            top: 10px;
        }
        .auto-style36 {
            height: 14px;
            background-color: #000099;
        }
        .auto-style37 {
            width: 292px;
            height: 135px;
            position: absolute;
            top: -23px;
            left: -496px;
        }
        .auto-style38 {
            width: 269px;
            height: 128px;
        }
        .auto-style39 {
            color: #9999FF;
            width: 360px;
            height: 16px;
            position: absolute;
            left: 12px;
            top: 148px;
        }
        .auto-style40 {
            margin-top: 0px;
        }
        .auto-style41 {
            width: 297px;
            height: 19px;
            position: absolute;
            top: 132px;
            left: -505px;
        }
        .auto-style42 {
            font-size: x-small;
        }
        </style>
</head>
<body style="height: 524px; width: 783px;">
    <form id="form1" runat="server">
    <div class="auto-style3">
    
        <br />
        <span style="font-size: 16pt; font-family: Arial; color: #ccccff;"><strong>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style9" Text="Label2" Font-Size="Small" Visible="False"></asp:Label>
        </strong>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Horizontalalign="left" Font-Size="X-Small" Font-Bold="True" Font-Names="Verdana" ForeColor="#000099"></asp:Label>
        <asp:Panel ID="Panel2" runat="server" CssClass="auto-style16">
            <span style="width: 425px; height: 181px;">
            <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" CssClass="auto-style15" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="138px" Width="146px" OnSelectionChanged="Calendar2_SelectionChanged">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
            </asp:Calendar>
            </span>
        </asp:Panel>
        </span>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style28" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="#9999FF" Text="Razpored delovnega časa" Visible="False"></asp:Label>
        <br />
                    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" CssClass="auto-style35">
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <LayoutTemplate>
                            <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                                <tr>
                                    <td class="auto-style32">
                                        <table cellpadding="0" class="auto-style38">
                                            <tr>
                                                <td align="center" class="auto-style31" colspan="2">Prijavno okno</td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="auto-style33">
                                                    <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Uporabniško ime:     </asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="UserName" runat="server" Font-Size="0.8em" Width="100px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login2">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right" class="auto-style33">
                                                    <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Geslo:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="Password" runat="server" Font-Size="0.8em" TextMode="Password" Width="100px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login2">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="RememberMe" runat="server" Text="" Width="139px" />
                                                    <asp:Button ID="LoginButtonNov" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" Text="Prijava" ValidationGroup="Login2" Width="105px" OnClick="LoginButton_Click" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2" style="color:Red;">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                        <TextBoxStyle Font-Size="0.8em" />
                        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    </asp:Login>
        <br />
        <asp:Button ID="bChgPwd" runat="server" CssClass="auto-style5" OnClick="Button1_Click1" Text="Spremeni geslo" BackColor="White" Font-Size="0.8em" ForeColor="#284E98" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="verdana,0.8em" Width="103px" />
    
        <asp:Label ID="Label1" runat="server" CssClass="auto-style8" Visible="False"></asp:Label>
    
        <asp:Label ID="lChgPwd" runat="server" Text="Label" CssClass="auto-style19" ForeColor="#CC3300" Font-Names="Verdana" Font-Size="X-Small"></asp:Label>
    
        <br />
        <br />
        <asp:Button ID="bOdjava" runat="server" OnClick="bOdjava_Click" Text="Odjava" CssClass="auto-style12" BackColor="White" Font-Size="0.8em" ForeColor="#284E98" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Width="103px" />
    
    </div>
        <asp:Panel ID="Panel1" runat="server" Height="375px" Width="491px" CssClass="auto-style40">
            <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="Evidenca delovnega časa na izbrani datum" ForeColor="#9999FF" Font-Bold="True" Font-Names="Verdana" CssClass="auto-style39"></asp:Label>
            <br />
            <div class="auto-style17">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style22" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="50px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="489px" OnDataBinding="DetailsView1_DataBinding" EmptyDataText="Za izbrani datum ni podatka" EnableModelValidation="True" Visible="False">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <EmptyDataRowStyle VerticalAlign="Top" Font-Names="Verdana" Font-Size="Small" ForeColor="#000099" />
                    <Fields>
                        <asp:BoundField DataField="Matična številka" HeaderText="Matična številka" SortExpression="Matična številka" >
                        <HeaderStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Ime" HeaderText="Ime" SortExpression="Ime" />
                        <asp:BoundField DataField="Priimek" HeaderText="Priimek" SortExpression="Priimek" />
                        <asp:BoundField DataField="Služba/Oddelek" HeaderText="Služba/Oddelek" SortExpression="Služba/Oddelek" />
                        <asp:BoundField DataField="Datum" HeaderText="Datum" ReadOnly="True" SortExpression="Datum" />
                        <asp:BoundField DataField="Plan" HeaderText="Plan" ReadOnly="True" SortExpression="Plan" />
                        <asp:BoundField DataField="Saldo" HeaderText="Saldo" ReadOnly="True" SortExpression="Saldo" />
                        <asp:BoundField DataField="Št. dni dopusta" HeaderText="Št. dni dopusta" SortExpression="Št. dni dopusta" />
                        <asp:BoundField DataField="Izredni dopust" HeaderText="Izredni dopust" ReadOnly="True" SortExpression="Izredni dopust" />
                        <asp:BoundField DataField="Bolniška" HeaderText="Bolniška" SortExpression="Bolniška" ReadOnly="True" />
                    </Fields>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                </asp:DetailsView>
                <asp:Panel ID="Panel4" runat="server" CssClass="auto-style20">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TSSPICAConnectionString3 %>" SelectCommand="with ctd as (
SELECT        u.ID AS 'MSIFRA',u.LASTNAME + ' ' + u.FIRSTNAME AS Zaposleni, w.LABEL AS [Delovno mesto], d.LABEL AS [Zahteva po delu], sch.LABEL AS Urnik, CONVERT(DECIMAL(10, 2), wp.SCHEDULE_PLAN / 60) AS [Planirane ure], 
                         CONVERT(VARCHAR(10), wp.START_DATETIME, 104) AS Datum, 
CASE WHEN DATEPART(DW, wp.START_DATETIME) = 1 THEN 'Ned.' WHEN DATEPART(DW, wp.START_DATETIME) 
                                                      = 2 THEN 'Pon.' WHEN DATEPART(DW, wp.START_DATETIME) = 3 THEN 'Tor.' WHEN DATEPART(DW, wp.START_DATETIME) = 4 THEN 'Sre.' WHEN DATEPART(DW, wp.START_DATETIME) 
                                                      = 5 THEN 'Čet.' WHEN DATEPART(DW, wp.START_DATETIME) = 6 THEN 'Pet.' WHEN DATEPART(DW, wp.START_DATETIME) = 7 THEN 'Sob.' END AS 'Dan',
CONVERT(VARCHAR(5), wp.START_DATETIME, 108) AS Od, CONVERT(VARCHAR(5), wp.END_DATETIME, 108) AS Do, 
                         ru.LASTNAME + ' ' + ru.FIRSTNAME AS Razporedil, wp.EMPLOYEE_ID, wp.START_DATETIME, wp.END_DATETIME, u.ID AS Maticna, u.ADDITIONAL_FIELD_1 AS SM, o.NAME AS ORG, CONCAT (c1.DESCRIPTION, c0.DESCRIPTION) AS 'Praznik_ime',
						 (CASE WHEN LEN (CONCAT (c1.DESCRIPTION, c0.DESCRIPTION)) &gt; 0 OR (DATEPART ( DW , wp.START_DATETIME) = 1) THEN 1 ELSE  0 END) AS 'Praznik_indeks' 
FROM            dbo.WORKPLANS AS wp INNER JOIN
                         dbo.USERS AS u ON wp.EMPLOYEE_ID = u.NO INNER JOIN
                         dbo.DEMANDS AS d ON wp.DEMAND_ID = d.DEMAND_ID INNER JOIN
                         dbo.SCHEDULE AS sch ON wp.SCHEDULE_ID = sch.SCHEDID INNER JOIN
                         dbo.WORKPLACES AS w ON wp.WORKPLACE_ID = w.WORKPLACE_ID LEFT OUTER JOIN
                         dbo.USERS AS ru ON wp.ROSTER_USER_ID = ru.NO INNER JOIN
                         dbo.ORG_HIERARCHY AS o ON o.ORGNO = u.ORGNO  
                         LEFT OUTER JOIN
			dbo.CALENDAR_EVENTS AS c1 ON CONVERT(VARCHAR(5), wp.START_DATETIME, 101) = CONVERT(VARCHAR(5), c1.CALENDAR_DATE, 101) AND c1.CALENDAR_TYPE =3 AND c1.RECURRING =1 LEFT OUTER JOIN
			dbo.CALENDAR_EVENTS AS c0 ON CONVERT(VARCHAR(10), wp.START_DATETIME, 101) = CONVERT(VARCHAR(10), c0.CALENDAR_DATE, 101) AND c0.CALENDAR_TYPE =3 AND c1.RECURRING =0


 WHERE      u.ID =@SIFRA and  (wp.START_DATETIME &gt;= CONVERT(datetime,@DATUM, 104) 
 AND (wp.END_DATETIME &lt;= CONVERT(datetime, @DATUM, 104)+21) ) 

)

 select *,
   case when c.Od= (select min(mc.Od) from ctd as mc WHERE mc.EMPLOYEE_ID=c.EMPLOYEE_ID and mc.Datum=c.Datum)
        then 1 else 3 end as vrstica
   from ctd as c
   order by c.START_DATETIME
">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label5" DefaultValue="" Name="SIFRA" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Calendar2" DefaultValue="" Name="DATUM" PropertyName="SelectedDate" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style18" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" Width="138px" EmptyDataText="Za izbrani datum ni podatka" EnableModelValidation="True" Visible="False" >
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="Datum" HeaderText="Datum" ReadOnly="True" SortExpression="Datum" />
                            <asp:BoundField DataField="Dan" HeaderText="Dan" ReadOnly="True" SortExpression="Dan" />
                            <asp:BoundField DataField="Zahteva po delu" HeaderText="Zahteva po delu" SortExpression="Zahteva po delu" >
                            <HeaderStyle Width="40px" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Od" HeaderText="Od" ReadOnly="True" SortExpression="Od" />
                            <asp:BoundField DataField="Do" HeaderText="Do" ReadOnly="True" SortExpression="Do" />
                            <asp:BoundField DataField="Praznik_indeks" HeaderText="Praznik_indeks" ReadOnly="True" SortExpression="Praznik_indeks" ShowHeader="False" ItemStyle-CssClass="hiddencol" HeaderStyle-CssClass="hiddencol" >
                            <HeaderStyle CssClass="hiddencol" />
                            <ItemStyle CssClass="hiddencol" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataRowStyle Font-Names="Verdana" Font-Size="Small" ForeColor="#000099" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    </asp:GridView>
                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style26" Font-Bold="True" Font-Names="Verdana" Font-Size="1em" ForeColor="#000099" Text="Pregled podatkov posameznika iz evidence delovnega časa" Visible="False"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" CssClass="auto-style37" Font-Names="Verdana" Font-Size="0.8em" Visible="False">
                        <CancelButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                        <ChangePasswordButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                        <ChangePasswordTemplate>
                            <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                                <tr>
                                    <td>
                                        <table cellpadding="2">
                                            <tr>
                                                <td align="center" class="auto-style36" colspan="2" style="color:White;font-size:0.9em;font-weight:bold;">Sprememba gesla</td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword" Width="235px">Trenutno geslo:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="CurrentPassword" runat="server" Font-Size="0.8em" TextMode="Password" Width="100px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ChangePassword2">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword" Width="235px">Novo geslo:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="NewPassword" runat="server" Font-Size="0.8em" TextMode="Password" Width="100px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ErrorMessage="New Password is required." ToolTip="New Password is required." ValidationGroup="ChangePassword2">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword" Width="235px">Potrdi novo geslo:</asp:Label>
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="ConfirmNewPassword" runat="server" Font-Size="0.8em" TextMode="Password" Width="100px"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword2">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2">
                                                    <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry." ValidationGroup="ChangePassword2"></asp:CompareValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" colspan="2" style="color:Red;">
                                                    <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="right">
                                                    <asp:Button ID="ChangePasswordPushButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="ChangePassword" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" OnClick="ChangePasswordPushButton_Click1" Text="Spremeni geslo" ValidationGroup="ChangePassword2" />
                                                </td>
                                                <td>
                                                    <asp:Button ID="CancelPushButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="Cancel" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" OnClick="CancelPushButton_Click" Text="Opusti" Width="104px" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </ChangePasswordTemplate>
                        <ContinueButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                        <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                        <PasswordHintStyle Font-Italic="True" ForeColor="#507CD1" />
                        <TextBoxStyle Font-Size="0.8em" />
                        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                    </asp:ChangePassword>
                    <asp:Label ID="lVsp" runat="server" CssClass="auto-style41" Font-Names="Verdana" Font-Size="Small" ForeColor="Red" Visible="False"></asp:Label>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panel3" runat="server" Height="156px">
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style34" Font-Bold="True" Font-Names="verdana,small" Font-Size="Small" ForeColor="#9999FF" Text="Registracijski dogodki na izbrani datum" Visible="False"></asp:Label>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="no" DataSourceID="SqlDataSourceEv" Font-Names="Verdana" Font-Size="X-Small" GridLines="Horizontal" Width="488px" EmptyDataText="Za izbrani datum ni podatka" EnableModelValidation="True" Visible="False" CssClass="auto-style42" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="LONG_NAME" HeaderText="Ime dogodka" SortExpression="LONG_NAME" >
                            <HeaderStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="URA" HeaderText="Ura" ReadOnly="True" SortExpression="URA" >
                            <HeaderStyle HorizontalAlign="Center" />
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                        <EmptyDataRowStyle ForeColor="#000099" Font-Size="Small" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceEv" runat="server" ConnectionString="<%$ ConnectionStrings:TSSPICAConnectionString6 %>" SelectCommand="SELECT E.DT, (case when CONVERT(VARCHAR(5), E.DT, 108)='00:00' and e.data &lt;&gt;'0' then CASE WHEN e.data &lt; 0 THEN '-' + CAST(CAST(ABS(e.data/60) AS int) AS VARCHAR(8)) ELSE CAST(CAST(ABS(e.data/60) AS int) AS VARCHAR(8)) END + ':' + right('00' + cast(ABS(e.data%60) as varchar(2)), 2) else (case when CONVERT(VARCHAR(5), E.DT, 108)='00:00' and e.data ='0' then ' '  
else CONVERT(VARCHAR(5), E.DT, 108)end)end) as 'URA',e.eventid,e.data, ED.LONG_NAME,ED.SHORT_NAME,u.no,u.lastname,u.firstname FROM EVENTS E, EVENT_DEF ED, USERS U where ED.EVENTID = E.EVENTID and U.NO = E.USERNO and U.ID=@SIFRA  and CONVERT(date, E.DT, 104) = CONVERT(date,@DATUM, 104) 	and e.disabled&lt;&gt;'1' and e.eventid&lt;&gt;'3' and e.eventid&lt;&gt;'4'
">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="Label5" Name="SIFRA" PropertyName="Text" />
                            <asp:ControlParameter ControlID="Calendar2" Name="DATUM" PropertyName="SelectedDate" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TSSPICAConnectionString2 %>" SelectCommand="select U.ID AS 'Matična številka', U.FIRSTNAME AS 'Ime', U.LASTNAME AS 'Priimek',  O.NAME AS 'Služba/Oddelek', CONVERT(char(19), AD.DAY, 104) AS 'Datum', 
CASE WHEN AD.PLANNED_TIME &lt; 0 THEN '-' + CAST(CAST(ABS(AD.PLANNED_TIME/60) AS int) AS VARCHAR(8)) ELSE CAST(CAST(ABS(AD.PLANNED_TIME/60) AS int) AS VARCHAR(8)) END + ':' + right('00' + cast(ABS(AD.PLANNED_TIME%60) as varchar(2)), 2) AS 'Plan',
CASE WHEN AD.BALANCE_RUNNING &lt; 0 THEN '-' + CAST(CAST(ABS(AD.BALANCE_RUNNING/60) AS int) AS VARCHAR(8)) ELSE CAST(CAST(ABS(AD.BALANCE_RUNNING/60) AS int) AS VARCHAR(8)) END + ':' + right('00' + cast(ABS(AD.BALANCE_RUNNING%60) as varchar(2)), 2) AS 'Saldo'
      ,AD.VACATION_DAYS_LEFT AS 'Št. dni dopusta'
      ,(select COUNT(ADC.CATEGORY_ID) 
from ANALYTICS_DAILY_CATEGORIES ADC , CATEGORY CAT, ANALYTICS_DAILY AD, USERS U, ORG_HIERARCHY O
where U.ID =@SIFRA and AD.USER_NO = U.NO and U.ORGNO = O.ORGNO and AD.ID = ADC.ANALYTICS_DAILY_ID and
ADC.CATEGORY_ID = CAT.CATEGID    and (CONVERT(datetime, AD.DAY, 104)) &gt;= (CONVERT(datetime, DATEADD(yy, DATEDIFF(yy, 0, @DATUM), 0), 104)) and (CONVERT(datetime, AD.DAY, 104)) &lt;= (CONVERT(datetime, @DATUM, 104))
 and ADC.CATEGORY_ID = 7) AS 'Izredni dopust',
 (select COUNT(ADC.CATEGORY_ID) 
from ANALYTICS_DAILY_CATEGORIES ADC , CATEGORY CAT, ANALYTICS_DAILY AD, USERS U, ORG_HIERARCHY O
where  U.ID =@SIFRA and AD.USER_NO = U.NO and U.ORGNO = O.ORGNO and AD.ID = ADC.ANALYTICS_DAILY_ID and
ADC.CATEGORY_ID = CAT.CATEGID    and  (CONVERT(datetime, AD.DAY, 104)) &gt;= (CONVERT(datetime, DATEADD(yy, DATEDIFF(yy, 0, @DATUM), 0), 104)) and (CONVERT(datetime, AD.DAY, 104)) &lt;= (CONVERT(datetime, @DATUM, 104))
 and ADC.CATEGORY_ID = 35) AS 'Bolniška'
from ANALYTICS_DAILY AD, USERS U, ORG_HIERARCHY O, ANALYTICS_DAILY_CATEGORIES ADC , CATEGORY CAT
where U.ID =@SIFRA and AD.USER_NO = U.NO and U.ORGNO = O.ORGNO and AD.ID = ADC.ANALYTICS_DAILY_ID and
ADC.CATEGORY_ID = CAT.CATEGID    and CONVERT(datetime, AD.DAY, 104) = CONVERT(datetime, @DATUM, 104)
">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label5" DefaultValue="" Name="SIFRA" PropertyName="Text" />
                    <asp:ControlParameter ControlID="Calendar2" DefaultValue="01.01.2018" Name="DATUM" PropertyName="SelectedDate" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </form>
</body>
</html>
