using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page 
{
    string loginOk = "false", logOff;
    string pwdCoda, oper, sqlString, redString, cg="";
    string SIFRA;
    string DATUM;
    int page_redirect = 0;

    SqlConnection conn = null;
    SqlDataReader rdr = null;


    protected void Page_Load(object sender, EventArgs e)
    {
        Login1.Focus();
        
        if (ChangePassword1.Visible == true)
        {
            
            Label7.Visible = false;
            
        }

        SIFRA = Request.QueryString["oper"];
        Calendar2.TodaysDate= DateTime.Now.AddDays(0);
        Calendar2.SelectedDate = Calendar2.TodaysDate;
        DATUM = Calendar2.SelectedDate.ToString();
        DATUM = DATUM.Substring(0, 10);

        //DetailsView1.Visible = true;
        

        //
        pwdCoda = Request.QueryString["pwdCoda"];
        Label1.Visible = false;
        Label1.Text = pwdCoda;
        // runu 
        Label2.Visible = false;
        Label2.Text = Request.QueryString["oper"];
        oper = Label2.Text;
        cg = Request.QueryString["chgpwd"];
        Label4.Visible = true;
        if (cg != null)
        {
            //lChgPwd.Visible = true;
            if (cg == "OK" || cg=="PWD")
            {
                if (cg == "OK")
                {
                    Label1.Visible = false;
                    Label2.Visible = false;
                    Label3.Visible = true;

                    lChgPwd.Text = "Geslo je spremenjeno!";
                }
                else
                {
                    lChgPwd.Text = "Zamenjaj geslo!";
                    lChgPwd.Visible = false;
                    Label4.Visible = false;
                    ChangePassword1.Visible = true;
                    Calendar2.Visible = false;
                    DetailsView1.Visible = false;
                    GridView1.Visible = false;
                    GridView2.Visible = false;

                }
            }
            else
            {
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;

                lChgPwd.Text = "Zamenjava gesla ni uspela!";
            }
        }
        else
        {
            lChgPwd.Visible = false;
        }
       

        //      Label1.Visible = true;
        //      Label2.Visible = true;
        Label3.Visible = true;
        if (pwdCoda != null && pwdCoda!="VSP")
        {
            SqlConnectionStringBuilder dsRjavUIP = new SqlConnectionStringBuilder();
            dsRjavUIP.UserID = "irrs_app";
            dsRjavUIP.Password = "aopadmin10";
            dsRjavUIP.DataSource = "10.10.50.161";
            SqlConnection conUIP = new SqlConnection(dsRjavUIP.ConnectionString);
            conUIP.Open();
            sqlString = "select nd.PRI_IME from[UIP].[dbo].[UIP_EDC_LICODE] as lc inner join[UIP].[dbo].[UIP_NDUNAME] as un on un.UNAME=lc.UNAME inner join[UIP].[dbo].[UIP_NDELUPO] as nd on nd.SIFD=un.SIFD where lc.UNAME='" + Label2.Text + "' and lc.CODA='" + Label1.Text + "' and un.OZNAKA='EDC'";
            SqlCommand commAmb = new SqlCommand(sqlString, conUIP);
            //          SqlCommand commAmb = new SqlCommand("select * from [UIP].[dbo].UIP_EDC_LICODE", conUIP);

            using (SqlDataReader reader = commAmb.ExecuteReader())
            {
                while (reader.Read())
                {
                    if (!reader.IsDBNull(0))
                    {
 
                        Label5.Text = SIFRA;
                        Label3.Text = "Prijavljeni ste kot " + (reader.GetString(0));
                        Label5.Visible = false;
                        if (ChangePassword1.Visible == false)
                        {

                            Label6.Visible = true;
                            Label7.Visible = true;
                            Label8.Visible = true;
                        }
                        if (cg!="PWD")
                        {
                                                    
                            DetailsView1.Visible = true;
                            
                            GridView2.Visible = true;
                            Label7.Visible = true;
                            GridView1.Visible = true;
                        }
                        
                    }
                    else
                    {
                        DetailsView1.Visible = false;
                    }

                }
                //Label3.Text = "Prijavljeni ste kot TEXT ";
            }
            // Novo
            SqlConnectionStringBuilder dsM2 = new SqlConnectionStringBuilder();
            dsM2.UserID = "irrs_app";
            dsM2.Password = "aopadmin10";
            dsM2.DataSource = "moder2";
            SqlConnection conM2Dat = new SqlConnection(dsM2.ConnectionString);
            conM2Dat.Open();

            sqlString = " select convert (char(10),max(AD.DAY),104) as datum from [TSSPICA].[DBO].ANALYTICS_DAILY as AD "
   + "inner join [TSSPICA].[DBO].USERS as U on U.NO =AD.USER_NO WHERE U.ID='" + Label2.Text+"' AND AD.DAY <=  getdate() and AD.PLANNED_TIME>0";

            SqlCommand commDat = new SqlCommand(sqlString, conM2Dat);
          
            using (SqlDataReader reader = commDat.ExecuteReader())
            {
                while (reader.Read())
                {
                    if (!reader.IsDBNull(0))
                    {
                        
                        Calendar2.TodaysDate = DateTime.Parse(reader.GetString(0)); 
                        Calendar2.SelectedDate = Calendar2.TodaysDate;
                    }
         
                }
            }

            // end novo


            Login1.Visible = false;
            bChgPwd.Visible = true;
            bOdjava.Visible = true;
        }
        else
        {
            Login1.Visible = true;
            bChgPwd.Visible = false;
            bOdjava.Visible = false;
            Label4.Visible = false;
            if (pwdCoda == "VSP")
            {
                lVsp.Text = "Prijava ni uspela. Poizkusite ponovno.";
                lVsp.Visible = true;
            }
        }
    }

    protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
    {
        //
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        // TO DO check if username and password is correct

        //       Page.Validate();
        
        if (1==1)
        {
            // call sql store procedure
            SqlConnectionStringBuilder dsRjavUIP = new SqlConnectionStringBuilder();
            dsRjavUIP.UserID = "irrs_app";
            dsRjavUIP.Password = "aopadmin10";
            dsRjavUIP.DataSource = "10.10.50.161";
            SqlConnection conUIP = new SqlConnection(dsRjavUIP.ConnectionString);
            conUIP.Open();
            //            sqlString = "EXEC [UIP].[dbo].[EDC_PRIJAVA] @oper='" + Login1.UserName + "', @geslo='" + Login1.Password + "'";
            sqlString = "DECLARE @oper char(20); ";
            sqlString = sqlString + "SET @oper = '" + Login1.UserName + "'; ";
            sqlString = sqlString + "DECLARE @geslo char(20);";
            sqlString = sqlString + "set @geslo = '" + Login1.Password + "'; ";
            sqlString = sqlString + "delete from [UIP].[dbo].[UIP_EDC_LICODE] where [UNAME]=@oper; ";
            sqlString = sqlString + "insert into [UIP].[dbo].UIP_EDC_LICODE select @oper, ";
            sqlString = sqlString + "(SELECT case when exists (select * from [UIP].[dbo].[UIP_NDUNAME] ";
            sqlString = sqlString + " where OZNAKA='EDC' and UNAME=@oper";
            sqlString = sqlString + "	 and ASCII(SUBSTRING(@geslo, 1, 1))+ ASCII(SUBSTRING(@geslo, 2, 1))*256+";
            sqlString = sqlString + "      ASCII(SUBSTRING(@geslo, 3, 1))*256*256+ ASCII(SUBSTRING(@geslo, 4, 1))*256*256*256=GESLO1";
            sqlString = sqlString + "	 and ASCII(SUBSTRING(@geslo, 5, 1))+  ASCII(SUBSTRING(@geslo, 6, 1))*256+";
            sqlString = sqlString + "      ASCII(SUBSTRING(@geslo, 7, 1))*256*256+ ASCII(SUBSTRING(@geslo, 8, 1))*256*256*256=GESLO2";
            sqlString = sqlString + "	 and ASCII(SUBSTRING(@geslo, 9, 1))+ ASCII(SUBSTRING(@geslo, 10, 1))*256+";
            sqlString = sqlString + "      ASCII(SUBSTRING(@geslo, 11, 1))*256*256+ ASCII(SUBSTRING(@geslo, 12, 1))*256*256*256=GESLO3";
            sqlString = sqlString + "	 and ASCII(SUBSTRING(@geslo, 13, 1))+ ASCII(SUBSTRING(@geslo, 14, 1))*256+";
            sqlString = sqlString + "	     ASCII(SUBSTRING(@geslo, 15, 1))*256*256+ ASCII(SUBSTRING(@geslo, 16, 1))*256*256*256=GESLO4";
            sqlString = sqlString + "	 and ASCII(SUBSTRING(@geslo, 17, 1))+ ASCII(SUBSTRING(@geslo, 18, 1))*256+";
            sqlString = sqlString + "	     ASCII(SUBSTRING(@geslo, 19, 1))*256*256+ ASCII(SUBSTRING(@geslo, 20, 1))*256*256*256=GESLO5)";
            sqlString = sqlString + "  then ";
            sqlString = sqlString + " CAST(DATEPART(year, getdate()) AS varchar(4)) + ";
            sqlString = sqlString + " CAST(DATEPART(month, getdate()) AS varchar(2)) + ";
            sqlString = sqlString + " CAST(DATEPART(day, getdate()) AS varchar(2)) + ";
            sqlString = sqlString + " CAST(DATEPART(HH, getdate())  AS varchar(2)) + ";
            sqlString = sqlString + " CAST(DATEPART(MINUTE, getdate()) AS varchar(2)) + ";
            sqlString = sqlString + " CAST(DATEPART(SS, getdate()) AS varchar(2)) ";
            sqlString = sqlString + "  else 'VSP'end); ";
            sqlString = sqlString + "select * from [UIP].[dbo].[UIP_EDC_LICODE] where [UNAME]=@oper";
            SqlCommand commAmb = new SqlCommand(sqlString, conUIP);
//          SqlCommand commAmb = new SqlCommand("select * from [UIP].[dbo].UIP_EDC_LICODE", conUIP);

            using (SqlDataReader reader = commAmb.ExecuteReader())
            {
                while (reader.Read())
                {
                    if (!reader.IsDBNull(0))
                        {
              //              tbAmb[maxAmb, xp] = (reader.GetString(xp));
                        }
                    if (!reader.IsDBNull(1))
                    {
                            pwdCoda = (reader.GetString(1));
                    }

                }
            }

            if (pwdCoda != "VSP")
            {
                if (Login1.Password == "zamenjajme")
                {
                    redString = "index.aspx?oper=" + Login1.UserName + "&pwdCoda=" + pwdCoda + "&chgpwd=" + "PWD";
                    SIFRA = Login1.UserName;
                    Response.Redirect(redString);
                                   
                }
                else
                {
                    redString = "index.aspx?oper=" + Login1.UserName + "&pwdCoda=" + pwdCoda;
                    SIFRA = Login1.UserName;
                    page_redirect = 1;
                    Response.Redirect(redString);
                }
            }
            else
            {
                sqlString = "DECLARE @oper char(20); ";
                sqlString = sqlString + "SET @oper = '" + Login1.UserName + "'; ";
                sqlString = sqlString + "delete from [UIP].[dbo].[UIP_EDC_LICODE] where [UNAME]=@oper; ";
                sqlString = sqlString + "select case when  ";
                sqlString = sqlString + "not exists (select * from [UIP].[dbo].[UIP_EDC_LICODE] where [UNAME]=@oper)";
                sqlString = sqlString + "then 'Odjavljeno!' else 'FAIL' end as sporocilo";
                SqlCommand commVSP = new SqlCommand(sqlString, conUIP);
                using (SqlDataReader reader = commVSP.ExecuteReader())
                redString = "index.aspx?pwdCoda=VSP";
                Response.Redirect(redString);
            }
        }
        
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        ChangePassword1.Visible = true;
        bChgPwd.Visible = false;
        bOdjava.Visible = false;
        Label6.Visible = false;
        //xxx
        int rowCount = GridView1.Rows.Count;


        if (ChangePassword1.Visible == true)
        {

            GridView1.Visible = false;
            Label7.Visible = false;
        }

        if (GridView1.Rows.Count == 0)
        {
            //grid is empty
            GridView1.Visible = false;
            Label7.Visible = false;
        }
        else
        {
            GridView1.Visible = true;
            Label7.Visible = true;
        }

    }

    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        Label1.Text = "Avtentifikacija uspešna";
    }

    protected void ChangePasswordPushButton_Click(object sender, EventArgs e)
    {
        ChangePassword1.Visible = true;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;

    }

    protected void ChangePassword1_ChangedPassword(object sender, EventArgs e)
    {

    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        ChangePassword1.Visible = true;
    }

    protected void UserName_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Password_TextChanged(object sender, EventArgs e)
    {

    }

    protected void ChangePassword1_ChangedPassword1(object sender, EventArgs e)
    {

    }

    protected void CancelPushButton_Click(object sender, EventArgs e)
    {
        ChangePassword1.Visible = false;
        Label6.Visible = true;
        // do not display gridview1 if empty row data
        int rowCount = GridView1.Rows.Count;


        if (ChangePassword1.Visible == true)
        {

            GridView1.Visible = false;
            Label7.Visible = false;
        }

        if (GridView1.Rows.Count == 0)
        {
            //grid is empty
            GridView1.Visible = false;
            Label7.Visible = false;
        }
        else
        {
            GridView1.Visible = true;
            Label7.Visible = true;
        }
    }

    protected void ChangePasswordPushButton_Click1(object sender, EventArgs e)
    {
      
        // call sql store procedure
        if ((ChangePassword1.NewPassword != "") && (ChangePassword1.NewPassword == ChangePassword1.ConfirmNewPassword))
        {
            SqlConnectionStringBuilder dsRjavUIP = new SqlConnectionStringBuilder();
            dsRjavUIP.UserID = "irrs_app";
            dsRjavUIP.Password = "aopadmin10";
            dsRjavUIP.DataSource = "10.10.50.161";
            SqlConnection conUIP = new SqlConnection(dsRjavUIP.ConnectionString);
            conUIP.Open();
            //            sqlString = "EXEC [UIP].[dbo].[EDC_PRIJAVA] @oper='" + Login1.UserName + "', @geslo='" + Login1.Password + "'";
            sqlString = "DECLARE @oper char(20); ";
            sqlString = sqlString + "SET @oper = '" + Label2.Text + "'; ";
            sqlString = sqlString + "DECLARE @geslo char(20); ";
            sqlString = sqlString + "set @geslo = '" + ChangePassword1.CurrentPassword + "'; ";
            sqlString = sqlString + "DECLARE @novo char(20); ";
            sqlString = sqlString + "set @novo = '" + ChangePassword1.NewPassword + "'; ";
            sqlString = sqlString + "update [UIP].[dbo].[UIP_NDUNAME] ";
            sqlString = sqlString + "set GESLO1 = ASCII(SUBSTRING(@novo, 1, 1)) + ASCII(SUBSTRING(@novo, 2, 1)) * 256 +";
            sqlString = sqlString + "   ASCII(SUBSTRING(@novo, 3, 1)) * 256 * 256 + ASCII(SUBSTRING(@novo, 4, 1)) * 256 * 256 * 256,";
            sqlString = sqlString + " GESLO2 = ASCII(SUBSTRING(@novo, 5, 1)) + ASCII(SUBSTRING(@novo, 6, 1)) * 256 +";
            sqlString = sqlString + "   ASCII(SUBSTRING(@novo, 7, 1)) * 256 * 256 + ASCII(SUBSTRING(@novo, 8, 1)) * 256 * 256 * 256,";
            sqlString = sqlString + " GESLO3 = ASCII(SUBSTRING(@novo, 9, 1)) + ASCII(SUBSTRING(@novo, 10, 1)) * 256 +";
            sqlString = sqlString + "   ASCII(SUBSTRING(@novo, 11, 1)) * 256 * 256 + ASCII(SUBSTRING(@novo, 12, 1)) * 256 * 256 * 256,";
            sqlString = sqlString + " GESLO4 = ASCII(SUBSTRING(@novo, 13, 1)) + ASCII(SUBSTRING(@novo, 14, 1)) * 256 +";
            sqlString = sqlString + "   ASCII(SUBSTRING(@novo, 15, 1)) * 256 * 256 + ASCII(SUBSTRING(@novo, 16, 1)) * 256 * 256 * 256,";
            sqlString = sqlString + " GESLO5 = ASCII(SUBSTRING(@novo, 17, 1)) + ASCII(SUBSTRING(@novo, 18, 1)) * 256 +";
            sqlString = sqlString + "    ASCII(SUBSTRING(@novo, 19, 1)) * 256 * 256 + ASCII(SUBSTRING(@novo, 20, 1)) * 256 * 256 * 256";
            sqlString = sqlString + " from [UIP].[dbo].[UIP_NDUNAME]";
            sqlString = sqlString + " where OZNAKA = 'EDC' and UNAME = @oper";
            sqlString = sqlString + " and ASCII(SUBSTRING(@geslo, 1, 1)) + ASCII(SUBSTRING(@geslo, 2, 1)) * 256 +";
            sqlString = sqlString + "     ASCII(SUBSTRING(@geslo, 3, 1)) * 256 * 256 + ASCII(SUBSTRING(@geslo, 4, 1)) * 256 * 256 * 256 = GESLO1";
            sqlString = sqlString + " and ASCII(SUBSTRING(@geslo, 5, 1)) + ASCII(SUBSTRING(@geslo, 6, 1)) * 256 +";
            sqlString = sqlString + "     ASCII(SUBSTRING(@geslo, 7, 1)) * 256 * 256 + ASCII(SUBSTRING(@geslo, 8, 1)) * 256 * 256 * 256 = GESLO2";
            sqlString = sqlString + " and ASCII(SUBSTRING(@geslo, 9, 1)) + ASCII(SUBSTRING(@geslo, 10, 1)) * 256 +";
            sqlString = sqlString + "     ASCII(SUBSTRING(@geslo, 11, 1)) * 256 * 256 + ASCII(SUBSTRING(@geslo, 12, 1)) * 256 * 256 * 256 = GESLO3";
            sqlString = sqlString + " and ASCII(SUBSTRING(@geslo, 13, 1)) + ASCII(SUBSTRING(@geslo, 14, 1)) * 256 +";
            sqlString = sqlString + "     ASCII(SUBSTRING(@geslo, 15, 1)) * 256 * 256 + ASCII(SUBSTRING(@geslo, 16, 1)) * 256 * 256 * 256 = GESLO4";
            sqlString = sqlString + " and ASCII(SUBSTRING(@geslo, 17, 1)) + ASCII(SUBSTRING(@geslo, 18, 1)) * 256 +";
            sqlString = sqlString + "     ASCII(SUBSTRING(@geslo, 19, 1)) * 256 * 256 + ASCII(SUBSTRING(@geslo, 20, 1)) * 256 * 256 * 256 = GESLO5 ";

            sqlString = sqlString + "SELECT case when exists(select * from [UIP].[dbo].[UIP_NDUNAME]";
            sqlString = sqlString + "  where OZNAKA = 'EDC' and UNAME = @oper";
            sqlString = sqlString + "    and ASCII(SUBSTRING(@novo, 1, 1)) + ASCII(SUBSTRING(@novo, 2, 1)) * 256 +";
            sqlString = sqlString + "        ASCII(SUBSTRING(@novo, 3, 1)) * 256 * 256 + ASCII(SUBSTRING(@novo, 4, 1)) * 256 * 256 * 256 = GESLO1";
            sqlString = sqlString + "    and ASCII(SUBSTRING(@novo, 5, 1)) + ASCII(SUBSTRING(@novo, 6, 1)) * 256 +";
            sqlString = sqlString + "        ASCII(SUBSTRING(@novo, 7, 1)) * 256 * 256 + ASCII(SUBSTRING(@novo, 8, 1)) * 256 * 256 * 256 = GESLO2";
            sqlString = sqlString + "    and ASCII(SUBSTRING(@novo, 9, 1)) + ASCII(SUBSTRING(@novo, 10, 1)) * 256 +";
            sqlString = sqlString + "        ASCII(SUBSTRING(@novo, 11, 1)) * 256 * 256 + ASCII(SUBSTRING(@novo, 12, 1)) * 256 * 256 * 256 = GESLO3";
            sqlString = sqlString + "    and ASCII(SUBSTRING(@novo, 13, 1)) + ASCII(SUBSTRING(@novo, 14, 1)) * 256 +";
            sqlString = sqlString + "        ASCII(SUBSTRING(@novo, 15, 1)) * 256 * 256 + ASCII(SUBSTRING(@novo, 16, 1)) * 256 * 256 * 256 = GESLO4";
            sqlString = sqlString + "    and ASCII(SUBSTRING(@novo, 17, 1)) + ASCII(SUBSTRING(@novo, 18, 1)) * 256 +";
            sqlString = sqlString + "        ASCII(SUBSTRING(@novo, 19, 1)) * 256 * 256 + ASCII(SUBSTRING(@novo, 20, 1)) * 256 * 256 * 256 = GESLO5)";
            sqlString = sqlString + " then 'OK'";
            sqlString = sqlString + " else 'FAIL'end as sporocilo";

            SqlCommand commAmb = new SqlCommand(sqlString, conUIP);
            //          SqlCommand commAmb = new SqlCommand("select * from [UIP].[dbo].UIP_EDC_LICODE", conUIP);

            using (SqlDataReader reader = commAmb.ExecuteReader())
            {
                while (reader.Read())
                {
                    if (!reader.IsDBNull(0))
                    {
                        redString = "index.aspx?oper=" + oper + "&pwdCoda=" + pwdCoda + "&chgpwd=" + (reader.GetString(0));
                        if (ChangePassword1.NewPassword=="zamenjajme")
                        {
                            redString = "index.aspx?oper=" + oper + "&pwdCoda=" + pwdCoda + "&chgpwd=PWD";
                        }
                        Response.Redirect(redString);
                    }

                }
            }
        }
    }

    protected void bOdjava_Click(object sender, EventArgs e)
    {
        // call sql store procedure
        SqlConnectionStringBuilder dsRjavUIP = new SqlConnectionStringBuilder();
        dsRjavUIP.UserID = "irrs_app";
        dsRjavUIP.Password = "aopadmin10";
        dsRjavUIP.DataSource = "10.10.50.161";
        SqlConnection conUIP = new SqlConnection(dsRjavUIP.ConnectionString);
        conUIP.Open();
        //            sqlString = "EXEC [UIP].[dbo].[EDC_PRIJAVA] @oper='" + Login1.UserName + "', @geslo='" + Login1.Password + "'";
        sqlString = "DECLARE @oper char(20); ";
        sqlString = sqlString + "SET @oper = '" + oper + "'; ";
        sqlString = sqlString + "delete from [UIP].[dbo].[UIP_EDC_LICODE] where [UNAME]=@oper; ";
        sqlString = sqlString + "select case when  ";
        sqlString = sqlString + "not exists (select * from [UIP].[dbo].[UIP_EDC_LICODE] where [UNAME]=@oper)";
        sqlString = sqlString + "then 'Odjavljeno!' else 'FAIL' end as sporocilo";
        SqlCommand commAmb = new SqlCommand(sqlString, conUIP);
     
        using (SqlDataReader reader = commAmb.ExecuteReader())
        {
            while (reader.Read())
            {
                if (!reader.IsDBNull(0))
                {
                    logOff = (reader.GetString(0));
                }
      
            }
        }

        //
        if (logOff == "FAIL")
        {
            redString = "index.aspx?oper=" + oper + "&pwdCoda=" + pwdCoda;
            Response.Redirect(redString);
        }
        else
        {
            redString = "index.aspx";
            Response.Redirect(redString);
        }
    }



    protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
    {

    }

    protected void RememberMe_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {

    }




protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {
        
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    void CustomersGridView_RowDataBound(Object sender, GridViewRowEventArgs e)
    {

        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // Display the company name in italics.
            //e.Row.Cells[1].Text = "<i>" + e.Row.Cells[1].Text + "</i>";
            if (e.Row.Cells[5].Text == "1")
            {
                e.Row.Cells[3].ForeColor = System.Drawing.Color.Red;
                e.Row.Cells[3].ForeColor = System.Drawing.Color.Blue;
            }

        }

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // Display the company name in italics.
            //e.Row.Cells[1].Text = "<i>" + e.Row.Cells[1].Text + "</i>";
            if (e.Row.Cells[5].Text == "1")
            {
                e.Row.Cells[1].ForeColor = System.Drawing.Color.Red;
                e.Row.Cells[0].ForeColor = System.Drawing.Color.Red;

            }

        }

        int rowCount = GridView1.Rows.Count;

        
            if (ChangePassword1.Visible == true)
            {

                GridView1.Visible = false;
                Label7.Visible = false;
            }

            if (GridView1.Rows.Count == 0)
            {
                //grid is empty
                GridView1.Visible = false;
                Label7.Visible = false;
            }
            else
            {
                GridView1.Visible = true;
                Label7.Visible = true;
            }
    }

    protected void DetailsView1_DataBinding(object sender, EventArgs e)
    {

    }

    protected void Page_PreLoad(object sender, EventArgs e)
    {
        // if redirect with code
        if (page_redirect == 1)
        {
            if (DetailsView1.Rows.Count == 0)
            {
                Calendar2.TodaysDate = DateTime.Now.AddDays(-1);
                Calendar2.SelectedDate = Calendar2.TodaysDate;
                DATUM = Calendar2.SelectedDate.ToString();
                DATUM = DATUM.Substring(0, 10);

            }

        }
    }

    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
