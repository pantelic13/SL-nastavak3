using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Text;

public partial class Zakazivanje : System.Web.UI.Page
{
    static Int32 ZakazivanjeId;
    static String startdate;
    static String enddate;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.SelectedDate = DateTime.Now.Date;
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       /* startdate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList1.Text;
        enddate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList2.Text;
        //Response.Write(startdate);
        NadjiSlobodanTermin();
        RadioButtonList1.Visible = true;*/
    }
    private void NadjiSlobodanTermin()
    {

        String mycon = "Data Source=DESKTOP-8B00S2O; Initial Catalog=Online; Integrated Security=True";
        String myquery = "select  RadnikId from Zakazivanje where ((dtstart between '" + startdate + "' and '" + enddate + "' ) or (dtend between '" + startdate + "' and '" + enddate + "' ))";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand com = new SqlCommand();
        com.CommandText = myquery;
        com.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = com;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //RadioButtonList1.Items.Clear();
            Label3.Text = "Dostupni Radnici su dati ispod";
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                RadioButtonList1.Items.Remove(RadioButtonList1.Items.FindByValue(dr["RadnikId"].ToString()));

            }
            if (RadioButtonList1.Items.Count == 0)
            {
                Label3.Text = "Termin nije dostupan";
            }

        }
        else
        {
            Label3.Text = "Dostupni Radnici su dati ispod";

        }
        con.Close();
        RadioButtonList1.Visible = true;
    }

    public void GenerisiZakazivanjeId()
    {
        String mycon = "Data Source=DESKTOP-8B00S2O; Initial Catalog=Online; Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select RadnikId from Zakazivanje";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            ZakazivanjeId = 1;

        }
        else
        {



            String mycon1 = "Data Source=DESKTOP-8B00S2O; Initial Catalog=Online; Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(ZakazivanjeId) from Zakazivanje";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);


            ZakazivanjeId = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());

            ZakazivanjeId = ZakazivanjeId + 1;
            scon1.Close();
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       /* GenerisiZakazivanjeId();
        String updatepass = "insert into tableZakazivanjedetail(ZakazivanjeId,Tretman,Klijent,dtstart,dtend) values(" + ZakazivanjeId + ",'" + RadioButtonList1.SelectedItem.Text + "','" + TextBox1.Text +  ",'" + startdate + "','" + enddate + "')";
        String mycon1 = "Data Source=DESHICA-PC\\SQLEXPRESS; Initial Catalog=Online;Integrated Security=True";
        SqlConnection s = new SqlConnection(mycon1);
        s.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = s;
        cmd1.ExecuteNonQuery();
        Label4.Text = ZakazivanjeId + RadioButtonList1.SelectedItem.Text + " Has Been Booked From " + startdate + " to " + enddate;*/
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
            startdate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList1.Text;
            enddate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList2.Text;
            //Response.Write(startdate);
            NadjiSlobodanTermin();
            RadioButtonList1.Visible = true;
        // Response.Redirect("Zakazivanje.aspx");
    }

    protected void Button2_Click1(object sender, EventArgs e)
    {
        GenerisiZakazivanjeId();
        String updatepass = "insert into Zakazivanje(ZakazivanjeId,RadnikId,KlijentId,dtstart,dtend,TretmanId) values(" + ZakazivanjeId + ",'" + RadioButtonList1.SelectedItem.Value + "','" + TextBox1.Text + "','" + startdate + "','" + enddate + "' ,'" + DropDownList3.SelectedItem.Value + "')";
        String mycon1 = "Data Source=DESKTOP-8B00S2O; Initial Catalog=Online;Integrated Security=True";
        SqlConnection s = new SqlConnection(mycon1);
        s.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = s;
        cmd1.ExecuteNonQuery();

        Label4.Text = ZakazivanjeId + RadioButtonList1.SelectedItem.Value + DropDownList3.Text + 
            " Uspešno ste zakazali Vaš termin " + startdate + " to " + enddate + " U slučaju promene bicete kontaktirani ";
    }

    protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
    {
        //select Radnik from Radnik exept select Radnik from Zakazivanje
    }
}