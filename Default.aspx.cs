﻿using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ServerValidate1(object source, ServerValidateEventArgs args)
    {
        args.IsValid = RadioWin1.Checked || RadioLoss1.Checked ;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        double tot_win,tot_loss,tot_scored,tot_allowed,tot_attend,tot_attavg;
        tot_win = tot_loss = tot_scored= tot_allowed =tot_attend= tot_attavg=0;
        if (RadioWin1.Checked == true)
            tot_win = tot_win + 1;
        else if ( RadioLoss1.Checked == true)
            tot_loss = tot_loss +1;
        
        if (RadioWin2.Checked == true)
            tot_win = tot_win + 1;
        else if( RadioLoss2.Checked ==true ) 
            tot_loss = tot_loss + 1;
        if (RadioWin3.Checked == true)
            tot_win = tot_win + 1;
        else if (RadioLoss3.Checked == true)
            tot_loss = tot_loss + 1;
        if (RadioWin4.Checked == true)
            tot_win = tot_win + 1;
        else if (RadioLoss4.Checked == true)
            tot_loss = tot_loss + 1;

        Label2.Text = tot_win.ToString();
        Label3.Text = tot_loss.ToString();
        Label4.Text = (tot_win /4).ToString();
        tot_scored= Convert.ToInt32(TextBox1.Text)   + Convert.ToInt32(TextBox4.Text)+ Convert.ToInt32(TextBox7.Text)+ Convert.ToInt32(TextBox10.Text);
        Label5.Text= tot_scored.ToString();
        tot_allowed=Convert.ToInt32(TextBox2.Text)   + Convert.ToInt32(TextBox5.Text)+ Convert.ToInt32(TextBox8.Text)+ Convert.ToInt32(TextBox11.Text);
        Label6.Text = tot_allowed.ToString();
        Label7.Text = (tot_scored - tot_allowed).ToString();
        tot_attend = Convert.ToInt32(TextBox3.Text) + Convert.ToInt32(TextBox6.Text) + Convert.ToInt32(TextBox9.Text) + Convert.ToInt32(TextBox12.Text);
        Label8.Text= ( (tot_attend)).ToString();
        tot_attavg= tot_attend/4;
        Label9.Text = (Math.Round(tot_attavg)).ToString();
 

        resultDiv.Visible = true;

    }
}
