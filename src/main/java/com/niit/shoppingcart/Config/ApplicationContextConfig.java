package com.niit.shoppingcart.Config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shoppingcart.Model.Category;
import com.niit.shoppingcart.DAO.CategoryDAO;
import com.niit.shoppingcart.DAO.CategoryDAOImpl;

@Configuration
@ComponentScan("com.niit.*")
@EnableTransactionManagement
public class ApplicationContextConfig {
 
    @Bean(name = "dataSource")
    public DataSource getH2DataSource() {
    	DriverManagerDataSource datasource = new DriverManagerDataSource();
         String url = "jdbc:h2:~/test;"+"INIT=CREATE SCHEMA IF NOT EXISTS TEST";
         
         datasource.setDriverClassName("org.h2.Driver");
         datasource.setUrl(url);
         
         datasource.setUsername("sa");
         datasource.setPassword("");
         return datasource;
    }
 
  private Properties getHibernateProperties()
  {
	Properties properties =new Properties();
	properties.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
	return properties;
    }
  @Autowired
  @Bean(name = "sessionFactory")
  public SessionFactory getSessionFactory(DataSource dataSource){
	  LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
	  sessionBuilder.addProperties(getHibernateProperties());
	  sessionBuilder.addAnnotatedClass(Category.class);
	  //sessionBuilder.addAnnotatedClass(Product.class);
	  //sessionBuilder.addAnnotatedClass(UserDetails.class);
	  return sessionBuilder.buildSessionFactory();
  }
 @Autowired
 @Bean(name = "transactionManager")
 public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory){
	 HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
	 
	 return transactionManager;
 }
 
 @Autowired
 @Bean(name = "categoryDAO")
 public CategoryDAO getCategoryDAO(SessionFactory sessionfactory){
	 return new CategoryDAOImpl(sessionfactory);
 }
}
     
    