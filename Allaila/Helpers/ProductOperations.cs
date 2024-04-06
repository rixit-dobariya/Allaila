using System;
using System.Data;
using System.Data.SqlClient;

namespace Allaila.Helpers
{
    public class ProductOperations
    {
        SqlConnection con;
        public string productId;
        public string productImage;
        public string productName;
        public double price;
        public int discount;
        public int stock1;
        public int stock2;
        public int stock3;
        public int stock4;
        public int stock5;
        public int brandId;
        public int categoryId;
        public string description;
        public string categoryName;
        public string brandName;
        DataSet ds;

        public ProductOperations()
        {
            con = ConnectionHelper.getCon();
            ds = new DataSet();
        }

        public DataSet getProductDataSet()
        {
            SqlDataAdapter da = new SqlDataAdapter("select Shoe_Id, Name, Price, Discount, Image, Size_6_Stock, Size_7_Stock, Size_8_Stock, Size_9_Stock, Size_10_Stock from Shoes_Details_tbl where Is_Deleted=0", con);
            da.Fill(ds);
            return ds;
        }

        public DataSet getProductDataSet(string brandId)
        {
            SqlDataAdapter da = new SqlDataAdapter("select Brand_Id, Shoe_Id, Name, Price, Discount, Image, Size_6_Stock, Size_7_Stock, Size_8_Stock, Size_9_Stock, Size_10_Stock from Shoes_Details_tbl where Is_Deleted=0 and Brand_Id="+brandId, con);
            da.Fill(ds);
            return ds;
        }

        public DataSet getProductData()
        {
            SqlDataAdapter da = new SqlDataAdapter("select Shoe_Id, Name, Price, Discount, Image, Price-(Price*Discount/100) as New_Price from Shoes_Details_tbl where Is_Deleted=0", con);
            da.Fill(ds);
            return ds;
        }

        public void addProduct(string shoeName, int brandId, int categoryId, string description, double price, int discount, string img, string stock1, string stock2, string stock3, string stock4, string stock5)
        {
            string query = "insert into Shoes_Details_tbl(Brand_Id, Category_Id, Name, Description, Price, Discount, Sold_Quantity, Is_Deleted, Upload_Date, Image, Size_6_Stock, Size_7_Stock, Size_8_Stock, Size_9_Stock, Size_10_Stock) values(" + brandId + "," + categoryId + ",'" + shoeName + "','" + description + "'," + price + "," + discount + ", 0, 0,'" + DateTime.Now.ToString() + "','" + img + "'," + stock1 + "," + stock2 + "," + stock3 + "," + stock4 + "," + stock5 + ")";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public void deleteProduct(string productId)
        {
            string query = "update Shoes_Details_tbl set Is_Deleted=1 where Shoe_Id=" + productId;
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.ExecuteNonQuery();
        }

        public void fetchProduct(int productId)
        {
            SqlDataAdapter da = new SqlDataAdapter("select Brand_Id, Category_Id, Name, Description, Price, Discount, Image, Size_6_Stock, Size_7_Stock, Size_8_Stock, Size_9_Stock, Size_10_Stock from Shoes_Details_tbl where Shoe_Id=" + productId, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            this.productId = productId.ToString();
            brandId = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
            categoryId = Convert.ToInt32(ds.Tables[0].Rows[0][1]);
            productImage = ds.Tables[0].Rows[0][6].ToString();
            description = ds.Tables[0].Rows[0][3].ToString();
            productName = ds.Tables[0].Rows[0][2].ToString();
            price = Convert.ToDouble(ds.Tables[0].Rows[0][4]);
            discount = Convert.ToInt32(ds.Tables[0].Rows[0][5]);
            stock1 = Convert.ToInt32(ds.Tables[0].Rows[0][7]);
            stock2 = Convert.ToInt32(ds.Tables[0].Rows[0][8]);
            stock3 = Convert.ToInt32(ds.Tables[0].Rows[0][9]);
            stock4 = Convert.ToInt32(ds.Tables[0].Rows[0][10]);
            stock5 = Convert.ToInt32(ds.Tables[0].Rows[0][11]);

            BrandOperations brandObj = new BrandOperations();
            brandObj.getBrandInfo(brandId.ToString());
            brandName = brandObj.brandName;

            CategoryOperations catObj = new CategoryOperations();
            catObj.getCategoryInfo(categoryId.ToString());
            categoryName = catObj.categoryName;
        }

        public void updateProduct()
        {
            SqlCommand cmd = new SqlCommand($"update Shoes_Details_tbl set Brand_Id={brandId}, Category_Id={categoryId}, Name='{productName}', Description='{description}', Price={price}, Discount={discount}, Image='{productImage}', Size_6_Stock={stock1}, Size_7_Stock={stock2}, Size_8_Stock={stock3}, Size_9_Stock={stock4}, Size_10_Stock={stock5} where Shoe_Id=" + productId, con);
            cmd.ExecuteNonQuery();
        }
    }
}