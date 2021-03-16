using System;
using System.Collections.Generic;
using System.Data;
using MySql.Data.MySqlClient;


namespace GuGuGuMusic
{
    public class MDB
    {
        public DataSet MusicInfoDataSet = new DataSet();

        [Obsolete]
        private static string _DBConnString = System.Configuration.ConfigurationManager.AppSettings["DBConnectionString"];

        /// <summary>
        /// 数据库 TODO
        /// </summary>
        [Obsolete]
        public static string DBConnString => _DBConnString;

        [Obsolete]
        public MySql.Data.MySqlClient.MySqlConnection connection()
        {
            MySql.Data.MySqlClient.MySqlConnection conn = new MySql.Data.MySqlClient.MySqlConnection(DBConnString);
            try
            {
                conn.Open();
                Console.WriteLine("数据库连接成功");
                return conn;
            }
            catch(Exception e)
            {
                Console.WriteLine(e.Message);
                Console.WriteLine("数据库连接失败");
                return null;
            }
        }

        /// <summary>
        /// Initialize a new instance of the MySqlCommand class with the text of the query and a MySqlConnection.
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        [Obsolete]
        public MySql.Data.MySqlClient.MySqlCommand Command(string sql)
        {
            MySql.Data.MySqlClient.MySqlCommand command = new MySql.Data.MySqlClient.MySqlCommand(sql, connection());
            return command;
        }

        /// <summary>
        /// Executes a SQL statement against the connection and returns the number of rows affected.
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        [Obsolete]
        public int ExcuteNonQuery(string sql)
        {
            return Command(sql).ExecuteNonQuery();
        }

        /// <summary>
        /// Sends the MySqlCommand.CommandText to the MySqlConnetion and builds a MySqlDataReader.
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        [Obsolete]
        public MySql.Data.MySqlClient.MySqlDataReader Read(string sql)
        {
            return Command(sql).ExecuteReader();
        }

        [Obsolete]
        public DataSet GetMusicInfo()
        {
            MySql.Data.MySqlClient.MySqlDataAdapter mySqlDataAdapter = new MySql.Data.MySqlClient.MySqlDataAdapter("select * from userinfo", connection());
            DataSet userInfoDataSet = new DataSet();
            mySqlDataAdapter.Fill(userInfoDataSet, "userinfo");
            return userInfoDataSet;
        }

        [Obsolete]
        public bool AddMusic(Music music)
        {
            try
            {
                string sql = "INSERT INTO musicinfo VALUES('" + music.Name + "','" + music.Singer + "','" + music.FileURL.Replace("\\", "/") + "','"+music.Album + "') ON DUPLICATE KEY UPDATE Fileurl = VALUES(Fileurl)";
                ExcuteNonQuery(sql);
                Console.WriteLine("数据库添加成功");
                return true;

            }catch(Exception e)
            {
                Console.WriteLine(e.Message + "数据库添加失败");
                return false;
            }
        }

        [Obsolete]
        public List<Music> GetMusics()
        {
            try
            {
                string sql = "SELECT * FROM musicinfo";
                MySql.Data.MySqlClient.MySqlDataReader rd = Read(sql);
                List<Music> musics = new List<Music>();
                while (rd.Read())
                {
                    Music music = new Music(rd["Name"].ToString(), rd["Singer"].ToString(), rd["Album"].ToString(), rd["Fileurl"].ToString().Replace("/", "\\"));
                    musics.Add(music);
                }
                Console.WriteLine("读取数据库成功");
                return musics;

            } catch(Exception e)
            {
                Console.WriteLine(e.Message + "读取数据库失败");
                return null;
            }
        }
    }
}
