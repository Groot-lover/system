package util;



import com.alibaba.druid.util.JdbcUtils;

import javax.sql.DataSource;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import static com.alibaba.druid.pool.DruidDataSourceFactory.createDataSource;

public class JDBCUtils {
    private static DataSource dataSource ;
    static {
        try {
            Properties properties =new Properties();
            InputStream inputStream= JdbcUtils.class.getClassLoader().getResourceAsStream("school.properties");
            properties.load(inputStream);
            dataSource= createDataSource(properties);
        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static DataSource getDataSource(){
        return dataSource;
    }
    public static Connection getConnection() throws SQLException {
        return dataSource .getConnection();
    }
    public static void close(Connection connection , Statement statement){
        close(null ,connection ,statement ) ;

    }
    public static void close(ResultSet resultSet , Connection connection , Statement statement ){
        if (resultSet != null){
            try {
                resultSet .close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (connection !=null){
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (statement  !=null){
            try {
                statement .close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
