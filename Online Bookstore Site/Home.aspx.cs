using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.VisualBasic.FileIO;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session.Clear();

        //Check if logged in
        if (Session["LoggedFirstName"] != null)
        {
            //User is logged in
            LoginLabel.Text = "Hello " + Session["LoggedFirstName"].ToString();
            LogoutButton.Visible = true;
        }
        else {
            //user is already logged out
            LogoutButton.Visible = false;
        }

        if (LoginLabel.Text.Contains("Hello"))
        {
            System.Diagnostics.Debug.WriteLine("has hello, so someone is signed in");
            LoginLabel.NavigateUrl = "";

        }
        else {
            LoginLabel.NavigateUrl = "~/LoginPage.aspx";
        }
            ErrorLabel.Visible = false;
        //Hiding other search types
        CourseDropDownList.Visible = false;
        SearchBox.Visible = false;
        //LogoutButton.Visible = false;    //probably don't need this 

        List<Book> Library = new List<Book>();
        //List<Person> Profiles = new List<Person>();

        //Label1.Parent;
        //Label1.BackColor = Color.Transparent;
        //Label1.ForeColor = Color.White;
        //Label1.Text = "foo bar";


        // Reference to Excel Application.
        //Excel.Application xlApp = new Excel.Application();

        //Excel.Workbook xlWorkbook = xlApp.Workbooks.Open("C:/Users/Broderick/Documents/School/Fourth Semester/Intro to Software Engineering/books3.xlsx");

        //// Get the first worksheet.
        //Excel.Worksheet xlWorksheet = (Excel.Worksheet)xlWorkbook.Sheets.get_Item(1);

        //Excel.Sheets sheets = xlApp.Worksheets;

        //Excel.Worksheet worksheet = (Excel.Worksheet)sheets.get_Item(1);

        //String[,] myvalues;   //what i was playing with at meeting
        //string[,] myvalues = new string[18,44];

        //Excel.Range range = xlWorksheet.get_Range("A1", "R44".ToString());

        //myvalues = (string[,])range.Cells.Value;

        //System.Diagnostics.Debug.WriteLine("test");
        //System.Diagnostics.Debug.WriteLine(myvalues[0, 0]);

        //int rowLength = myvalues.GetLength(0);
        //int colLength = myvalues.GetLength(1);

        //for (int i = 0; i < rowLength; i++)
        //{
        //    for (int j = 0; j < colLength; j++)
        //    {
        //        System.Diagnostics.Debug.WriteLine(string.Format("{0} ", myvalues[i, j]));
        //    }
        //    //Console.Write(Environment.NewLine + Environment.NewLine);
        //}

        //// Get the range of cells which has data.
        //Excel.Range xlRange = xlWorksheet.UsedRange;

        //// Get an object array of all of the cells in the worksheet with their values.
        //object[,] valueArray = (object[,])xlRange.get_Value(Excel.XlRangeValueDataType.xlRangeValueDefault);


        //String[,] arr = new String[xlWorksheet.UsedRange.Rows.Count, xlWorksheet.UsedRange.Columns.Count];
        //for (int row = 0; row <= xlWorksheet.UsedRange.Rows.Count; row++)
        //{
        //    for (int col = 0; col <= xlWorksheet.UsedRange.Columns.Count; col++)
        //    {
        //        arr[row, col] = valueArray[row, col].ToString();
        //        //System.Diagnostics.Debug.WriteLine(valueArray[row, col].ToString());
        //    }

        // iterate through each cell and display the contents.
        //for (int row = 1; row <= xlWorksheet.UsedRange.Rows.Count; ++row)
        //{
        //    Console.WriteLine(valueArray[row, row].ToString());
        //}




        //Excel.Application myApp = new Excel.Application();
        //Excel.Workbook xlWorkbook = myApp.Workbooks.Open(@"C:/Users/Broderick/Documents/School/Fourth Semester/Intro to Software Engineering/books3.xlsx");
        //Excel.Worksheet xlWorksheet = (Excel.Worksheet)xlWorkbook.Sheets[1];
        //Excel.Range xlRange = xlWorksheet.UsedRange;

        //int rowCount = xlRange.Rows.Count;
        //int colCount = xlRange.Columns.Count;

        //String[,] arr = new String[xlWorksheet.UsedRange.Rows.Count, xlWorksheet.UsedRange.Columns.Count];
        //for (int row = 1; row <= xlWorksheet.UsedRange.Rows.Count; ++row)
        //{
        //    for (int col = 1; col <= xlWorksheet.UsedRange.Columns.Count; ++col)
        //    {
        //        arr[row, col] = valueArray[row, col].ToString();
        //    }
        //}

        //for (int i = 1; i <= rowCount; i++)
        //{
        //    for (int j = 1; j <= colCount; j++)
        //    {
        //        //System.Diagnostics.Debug.WriteLine(xlRange.Cells(i, j)
        //        string item = xlWorksheet.UsedRange.Cells(i, j);

        //        System.Diagnostics.Debug.WriteLine(xlWorksheet.UsedRange.Cells(i, j).Value);
        //    }
        //}

        //var path = @"glid.csv";

        //TextFieldParser parser = new TextFieldParser(path);

        //parser.HasFieldsEnclosedInQuotes = true;
        //parser.SetDelimiters(",");

        //while (!parser.EndOfData)
        //{
        //    parser.ReadLine();
        //    fields = parser.ReadFields();

        //    //do something
        //}

        //parser.Close();

        //using (var csvReader = new TextFieldParser(reader))
        //{
        //    csvReader.SetDelimiters(new string[] { "," });
        //    csvReader.HasFieldsEnclosedInQuotes = true;
        //    fields = csvReader.ReadFields();
        //}


        string fileName = "books.csv";
        string path = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, fileName);

        //THIS WORKS
        using (TextFieldParser parser = new TextFieldParser(path))
        {
            parser.HasFieldsEnclosedInQuotes = true;
            parser.TextFieldType = FieldType.Delimited;
            parser.SetDelimiters(",");

            while (!parser.EndOfData)
            {
                Book tempBook = new Book();
                //Processing row
                string[] fields = parser.ReadFields();
                //foreach (string field in fields)
                //{
                //    //TODO: Process field
                //}

                tempBook.ISBN = fields[0].ToString();
                tempBook.Title = fields[1].ToString();
                tempBook.Author = fields[2].ToString();
                tempBook.Semester = fields[3].ToString();
                tempBook.Course = fields[4].ToString();
                tempBook.SectionNumber = fields[5].ToString();
                tempBook.Teacher = fields[6].ToString();
                tempBook.CRN = fields[7].ToString();
                tempBook.Importance = fields[8].ToString();
                tempBook.NewStock = Int32.Parse(fields[9]);
                tempBook.UsedStock = Int32.Parse(fields[10]);
                tempBook.RentalStock = Int32.Parse(fields[11]);
                tempBook.ebookStock = Int32.Parse(fields[12]);
                tempBook.NewPrice = float.Parse(fields[13]);
                tempBook.UsedPrice = float.Parse(fields[14]);
                tempBook.RentalPrice = float.Parse(fields[15]);
                tempBook.ebookPrice = float.Parse(fields[16]);
                tempBook.Description = fields[17].ToString();

                Library.Add(tempBook);

                //System.Diagnostics.Debug.WriteLine(fields[17]);
            }

            parser.Close();
        }

        System.Diagnostics.Debug.WriteLine("Here is count in library " + Library.Count);
        System.Diagnostics.Debug.WriteLine(Library.ElementAt(27).Title);


        //using (StreamReader sr = new StreamReader("C:/Users/Broderick/Documents/School/Fourth Semester/Intro to Software Engineering/Online Bookstore Site/studentsdata.txt"))
        //{
        //    Person tempPerson = new Person();

        //    string currentLine;
        //    // currentLine will be null when the StreamReader reaches the end of file            
        //    while ((currentLine = sr.ReadLine()) != null)
        //    {
        //        string[] data = currentLine.Split(',');

        //        tempPerson.FirstName = data[0];
        //        tempPerson.LastName = data[1];
        //        tempPerson.UserName = data[2];
        //        tempPerson.Password = data[3];
        //        tempPerson.FinancialAidAward = Int32.Parse(data[4]);

        //        Profiles.Add(tempPerson);

        //    }
        //    sr.Close();
        //    System.Diagnostics.Debug.WriteLine("Here is count of profiles " + Profiles.Count);
        //}
    }
    

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

    }

    protected void SearchButton_Click(object sender, ImageClickEventArgs e)
    {
        SearchBox.Visible = false;
        System.Diagnostics.Debug.Write("test output");
    }
        
    protected void TeacherDropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {

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
        Session["LoggedFirstName"] = "";
        LoginLabel.Text = "Login";
        //enable the login hyperlink 
        LoginLabel.NavigateUrl = "~/LoginPage.aspx";
        LogoutButton.Visible = false;
    }
}

public class Book
{
    public string ISBN { get; set; }
    public string Title { get; set; }
    public string Author { get; set; }
    public string Semester { get; set; }
    public string Course { get; set; }
    public string SectionNumber { get; set; }
    public string Teacher { get; set; }
    public string CRN { get; set; }
    public string Importance { get; set; } //could just make an integer and use 1 or 0
    public int NewStock { get; set; }
    public int UsedStock { get; set; }
    public int RentalStock { get; set; }
    public int ebookStock { get; set; } // 0 or 1 (infinity)

    public float NewPrice { get; set; }
    public float UsedPrice { get; set; }
    public float RentalPrice { get; set; }
    public float ebookPrice { get; set; }

    public string Description { get; set; }

}

//public class Person
//{
//    public string FirstName { get; set; }
//    public string LastName { get; set; }
//    public string UserName { get; set; }
//    public string Password { get; set; }
//    public int FinancialAidAward { get; set; }

//}