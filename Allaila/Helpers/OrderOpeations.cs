using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Allaila.Helpers
{
    public class OrderOpeations
    {
        SqlConnection con;
        public OrderOpeations()
        {
            con = ConnectionHelper.getCon();
        }

        public string getOrderId(string userId, string billingAddressId, string shippingAddressId, int shippingCharge, double total)
        {
            string query = $"insert into Order_Header_tbl(User_Id, Order_Date, Order_Status_Id, Billing_Address_Id, Shipping_Address_Id, Shipping_Charge, Total) values({userId},GETDATE(),0,{billingAddressId},{shippingAddressId},{shippingCharge},{total});SELECT SCOPE_IDENTITY();";
            SqlCommand cmd = new SqlCommand(query, con);
            return cmd.ExecuteScalar().ToString();
        }

        public void addOrderDetails(string orderId, string productId, string size, string quantity, string price)
        {
            string query = $"insert into Order_Details_tbl values({orderId},{productId},{size},{quantity},{price})";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public void clearCart(string userId)
        {
            string query = "delete from Cart_Details_tbl where User_Id=" + userId;
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public DataSet getOrderHeaderDataSet(string userId)
        {
            string query = "select * from Order_Header_tbl where User_Id=" + userId;
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        public DataSet getOrderHeaderDataSet()
        {
            string query = "select * from Order_Header_tbl";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }

        public DataSet getOrderDetailsDataSet(string orderId)
        {
            string query = "select * from Order_Details_tbl where Order_Id=" + orderId;
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}