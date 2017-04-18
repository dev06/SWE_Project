using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoginPage : System.Web.UI.Page
{   List<Person> Profiles = new List<Person>();
    protected void Page_Load(object sender, EventArgs e)
    {
        LogoutButton.Visible = false;
        //Hiding other search types
        CourseDropDownList.Visible = false;
        SearchBox.Visible = false;

        ErrorLabel.Visible = false;
        UsernameError.Visible = false;
        PasswordError.Visible = false;
        LoginLabel.Visible = false;

        string fileName = "studentsdata.txt";
        string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, fileName);

        using (StreamReader sr = new StreamReader(path))
        {


            string currentLine;
            // currentLine will be null when the StreamReader reaches the end of file            
            while ((currentLine = sr.ReadLine()) != null)
            {
                Person tempPerson = new Person();
                string[] data = currentLine.Split(',');

                tempPerson.FirstName = data[0];
                tempPerson.LastName = data[1];
                tempPerson.UserName = data[2];
                tempPerson.Password = data[3];
                tempPerson.FinancialAidAward = Int32.Parse(data[4]);

                Profiles.Add(tempPerson);

            }

            sr.Close();
            //System.Diagnostics.Debug.WriteLine("Here is count of profiles " + Profiles.Count);
        }
    }

    protected void SearchButton_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        string username = UsernameTextBox.Text;
        string password = PasswordTextBox.Text;
        if (username == "")
        {
            UsernameError.Visible = true;
            UsernameError.Text = "*Please enter a username*";
        }

        if (password == "")
        {
            PasswordError.Visible = true;
            PasswordError.Text = "*Please enter a password*";
        }

        //var firstElement = Profiles.First();

        int UsernameExistsAtLine = -1;
        bool LoginSuccessful = false;
        if (username != "" && password != "")
        {

            for (int i = 0; i < 10; i++)
            {
                if (username == Profiles.ElementAt(i).UserName)
                {
                    UsernameExistsAtLine = i;
                    //System.Diagnostics.Debug.WriteLine("Found a match.");
                    //System.Diagnostics.Debug.WriteLine(i);
                }

            }
            //System.Diagnostics.Debug.WriteLine(UsernameExistsAtLine);


            if (UsernameExistsAtLine == -1)
            {
                //Username does not exist, don't bother checking password
                System.Diagnostics.Debug.WriteLine("Username does not exist");
                UsernameError.Visible = true;
                UsernameError.Text = "*Login credentials are not valid*";
                LoginSuccessful = false;
            }
            else
            {   //Username exists, so check password
                if (password == Profiles.ElementAt(UsernameExistsAtLine).Password)
                {
                    //Password is correct
                    string Fname = Profiles.ElementAt(UsernameExistsAtLine).FirstName.ToString();
                    LoginSuccessful = true;
                    LoginLabel.Visible = true;
                    LoginLabel.Text = "Hello " + Fname;
                    //Session.Add("FirstName", Fname);
                    Session["LoggedFirstName"] = Fname;
                    System.Diagnostics.Debug.WriteLine("Logged in successfully");
                }
                else
                {
                    //Password is incorrect
                    System.Diagnostics.Debug.WriteLine("Login failed");
                    UsernameError.Visible = true;
                    UsernameError.Text = "*Login credentials are not valid*";
                    LoginSuccessful = false;
                }
            }
        }
        
        //System.Diagnostics.Debug.WriteLine(Profiles.ElementAt(9).FirstName);
        //System.Diagnostics.Debug.WriteLine(Profiles.First().FirstName);
    }


    protected void SearchByDropDown_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (SearchByDropDown.SelectedIndex == 0)
        {
            SearchBox.Visible = false;
            TeacherDropDownList.Visible = true;
            CourseDropDownList.Visible = false;
        }
        if (SearchByDropDown.SelectedIndex == 1)
        {
            SearchBox.Visible = false;
            TeacherDropDownList.Visible = false;
            CourseDropDownList.Visible = true;
        }
        if (SearchByDropDown.SelectedIndex == 2)
        {
            SearchBox.Visible = true;
            TeacherDropDownList.Visible = false;
            CourseDropDownList.Visible = false;
        }
    }

    protected void LogoutButton_Click(object sender, EventArgs e)
    {

    }
}

public class Person
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string UserName { get; set; }
    public string Password { get; set; }
    public int FinancialAidAward { get; set; }

}