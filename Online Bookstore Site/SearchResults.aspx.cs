using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;


public partial class SearchResults : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        UpdateUI(SearchTypeDropDown.SelectedIndex);



        ControlCollection controlCollection = Controls;


        
        foreach (Control c in controlCollection)
        {
            Debug.WriteLine(c.ID); 
        }

        
        for (int i = 1;  i < 44; i++)
        {
            try
            {
                Control c = FindControl("Panel" + i);

                foreach(Control cn in c.Controls)
                {
                    if(cn.ID == "New")
                    {
                        Button button = (Button)cn;
                      //  button.Text = "New \r\n New" ; 
                    }
                    Debug.WriteLine(cn.ID);

                }

            }
            catch (System.Exception ee)
            {

            }

        }


    }
    


    protected void SearchLogin_Click(object sender, EventArgs e)
    {
        
      
    }

    protected void SearchAboutUsClick(object sender, EventArgs e)
    {

    }

    protected void SearchContactUs_Click(object sender, EventArgs e)
    {

    }

    protected void SearchHome_Click(object sender, EventArgs e)
    {

    }

    protected void ShoppingCartButtonClick(object sender, ImageClickEventArgs e)
    {

    }

    protected void SearchButton_Click(object sender, ImageClickEventArgs e)
    {

    }


    protected void CourseDropdown_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void ProfessorDropdown_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void SearchTypeDropDown_SelectedIndexChanged(object sender, EventArgs e)
    {

        UpdateUI(SearchTypeDropDown.SelectedIndex); 


    }


    private void UpdateUI(int i)
    {
        if (i == 0)
        {
            ProfessorDropdown.Visible = false;
            CourseDropdown.Visible = false;
            SearchTextBar.Visible = true;
        }

        else if (i == 1)
        {
            ProfessorDropdown.Visible = false;
            CourseDropdown.Visible = true;
            SearchTextBar.Visible = false;
        }

        else if (i == 2)
        {
            ProfessorDropdown.Visible = true;
            CourseDropdown.Visible = false;
            SearchTextBar.Visible = false;
        }
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }



    protected void NewButtonPressed(object sender, EventArgs e)
    {
     //   Button b = (Button)sender;

    }
    protected void UsedButtonPressed(object sender, EventArgs e)
    {
      //  Button b = (Button)sender;

    }

    protected void RentButtonPressed(object sender, EventArgs e)
    {
       // Button b = (Button)sender;

    }

    protected void EbookButtonPressed(object sender, EventArgs e)
    {
      ///  Button b = (Button)sender;

    }


 








}

