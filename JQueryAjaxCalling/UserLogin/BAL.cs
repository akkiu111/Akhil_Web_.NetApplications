namespace UserLogin
{
    public class BAL
    {
        DAL dal = new DAL();
        public int insertData(DataInfo datainfo)
        {
            return dal.insertData(datainfo);
        }
    }
}
