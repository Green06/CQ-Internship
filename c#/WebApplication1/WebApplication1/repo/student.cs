//using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WebApplication1.repo
{
    public class student
    {
        public int AddStudent(string name)
        {
            string connectionString = "server=localhost, 1401;database=studentc#;user id=sa;password=Pass@word;" +
        "TrustServerCertificate=true";

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string query = "insert into student(name) values(@name)";

            SqlParameter paramName = new SqlParameter();
            paramName.ParameterName = "name";
            paramName.Value = name;
            paramName.SqlDbType = System.Data.SqlDbType.VarChar;
            paramName.Size = 100;

            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;

            cmd.Parameters.Add(paramName);

            int noOfRowsAffected = cmd.ExecuteNonQuery();
            return noOfRowsAffected;
        }
        public int AddStudentProc(string name, int rollno, int marks, string department)
        {
            string connectionString = "server=localhost, 1401;database=studentc#;user id=sa;password=Pass@word;" +
      "TrustServerCertificate=true";

            SqlConnection con = new SqlConnection(connectionString);
            con.Open();

            string query = "AddStudent";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.StoredProcedure;


            SqlParameter paramName = new SqlParameter();
            paramName.ParameterName = "Name";
            paramName.Value = name;
            paramName.SqlDbType = System.Data.SqlDbType.VarChar;
            paramName.Size = 100;

            SqlParameter paramRollNo = new SqlParameter();
            paramRollNo.ParameterName = "rollno";
            paramRollNo.Value = rollno;
            paramRollNo.SqlDbType = System.Data.SqlDbType.Int;

            SqlParameter paraMarks = new SqlParameter();
            paraMarks.ParameterName = "marks";
            paraMarks.Value = marks;
            paraMarks.SqlDbType = System.Data.SqlDbType.Int;

            SqlParameter paramDept = new SqlParameter();
            paramDept.ParameterName = "Department";
            paramDept.Value = department;
            paramDept.SqlDbType = System.Data.SqlDbType.VarChar;
            paramDept.Size = 100;

            SqlParameter paramReturn = new SqlParameter();
            paramReturn.SqlDbType = System.Data.SqlDbType.Int;
            paramReturn.Direction = System.Data.ParameterDirection.ReturnValue;

            cmd.Parameters.Add(paramName);
            cmd.Parameters.Add(paraMarks);
            cmd.Parameters.Add(paramRollNo);
            cmd.Parameters.Add(paramDept);
            cmd.Parameters.Add(paramReturn);

            cmd.ExecuteNonQuery();

            int ret = (int)paramReturn.Value;
            return ret;
        }
    }
}

