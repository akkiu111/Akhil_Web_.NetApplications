using System;
using System.Data;
using System.Data.SqlClient;
using Utilities;


namespace UserLogin
{
    public class DAL
    {
        SQLHelper sqlHelper = new SQLHelper();

        public int insertData(DataInfo datainfo)
        {
            SqlParameter[] sqlparam = new SqlParameter[3];
            sqlparam[0] = new SqlParameter("@name", datainfo.Name);
            sqlparam[1] = new SqlParameter("@age", datainfo.Age);
            sqlparam[2] = new SqlParameter("@cout", SqlDbType.Int);
            sqlparam[2].Direction = ParameterDirection.Output;
            int result = sqlHelper.RunSp("sp_insertinformation", sqlparam);
            int outresult = Convert.ToInt32(sqlparam[2].Value);
            return outresult;
        }
    }
}
