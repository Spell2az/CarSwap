using System;
using System.Security.Cryptography;
using System.Text;


/// <summary>
/// Summary description for Security
/// </summary>
public class Security
{
    public Security()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public string SignUp(string email, string password, string passwordConfirm, string firstName, string lastName )
    {
        

        if (password != passwordConfirm) return "The password do not match.";
        string hashPassword = GetHashString(password);

        var dc = new DataConnection();
        dc.AddParameter("@email", email);
        dc.AddParameter("@password", hashPassword);
        dc.AddParameter("@firstName", firstName);
        dc.AddParameter("@lastName", lastName);

        dc.Execute("sproc_AddNewUser");


        return "";
    }

    private string GetHashString(string password)
    {
        if (password == "") return password;

        SHA256Managed hashGenerator = new SHA256Managed();

        byte[] textBytes = Encoding.UTF8.GetBytes(password);

        byte[] hashBytes = hashGenerator.ComputeHash(textBytes);

        var hashString = BitConverter.ToString(hashBytes).Replace("-", "");

        return hashString;
    }

    public bool Login(string email, string password)
    {
        var hashString = GetHashString(password);
        
        var dc = new DataConnection();

        dc.AddParameter("@password", hashString);
        dc.AddParameter("@email", email);
        dc.Execute("sproc_CheckUser");

        return dc.Count == 1;
    }

    public void UpdatePassword()
    {
        throw new System.NotImplementedException();
    }
}