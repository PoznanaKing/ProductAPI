using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace ProductAPI.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        List<Product> products = new List<Product>();
        Connect conn = new Connect();
        [HttpGet]
        public object Get()
        {
           
            conn.Connection.Open();
            string sqlCode1 = "SELECT * FROM `products`";
            MySqlCommand cmd = new MySqlCommand(sqlCode1, conn.Connection);

            MySqlDataReader reader = cmd.ExecuteReader();
            
            reader.Read();
            do
            {
                Product productTemp = new Product();
                productTemp.Id = reader.GetGuid(0);
                productTemp.Name = reader.GetString(1);
                productTemp.Price = reader.GetInt32(2);
                productTemp.CreatedDate= reader.GetDateTime(3);

                products.Add(productTemp);
            }while (reader.Read());
            reader.Close();
            conn.Connection.Close();
            return new {result =  products};
        }
        [HttpPost]

        public object Post(Product prd)
        {
            conn.Connection.Open();

            
            string sql = $"INSERT INTO `products`(`Id`, `Name`, `Price`, `CreatedTime`) VALUES ('{prd.Id}','{prd.Name}',{prd.Price},'{DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss")}')";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            cmd.ExecuteNonQuery();
            
            
            conn.Connection.Close() ;
            return new {Message = "új rekord felvéve"};
        }
        
    }
}
