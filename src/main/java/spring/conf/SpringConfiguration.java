package spring.conf;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
<<<<<<< HEAD
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.ApplicationContext;
=======
import org.springframework.beans.factory.annotation.Value;
>>>>>>> 11458d4a6f31a80f99d51ab9ec393550765e9e9d
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.io.ClassPathResource;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@PropertySource("classpath:spring/db.properties")
public class SpringConfiguration {
	private @Value("${jdbc.driver}") String driver;
	private @Value("${jdbc.url}") String url;
	private @Value("${jdbc.username}") String username;
	private @Value("${jdbc.password}") String password;
	
<<<<<<< HEAD
	@Autowired
	private ApplicationContext context;
	
	@Bean
	public BasicDataSource dataSource() {
=======
	@Bean
	public BasicDataSource dataSource(){
>>>>>>> 11458d4a6f31a80f99d51ab9ec393550765e9e9d
		BasicDataSource basicDataSource = new BasicDataSource();
		basicDataSource.setDriverClassName(driver);
		basicDataSource.setUrl(url);
		basicDataSource.setUsername(username);
		basicDataSource.setPassword(password);
		
		return basicDataSource;
	}
	
	@Bean
	public SqlSessionFactory sqlSessionFactory() throws Exception {
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setConfigLocation(new ClassPathResource("spring/mybatis-config.xml"));
		sqlSessionFactoryBean.setDataSource(dataSource());
<<<<<<< HEAD
		sqlSessionFactoryBean.setMapperLocations(context.getResources("classpath:*/dao/*Mapper.xml"));
=======
		sqlSessionFactoryBean.setMapperLocations(new ClassPathResource("member/dao/memberMapper.xml"));
>>>>>>> 11458d4a6f31a80f99d51ab9ec393550765e9e9d
		
		return sqlSessionFactoryBean.getObject();
	}
	
	@Bean
<<<<<<< HEAD
	public SqlSessionTemplate sqlSession() throws Exception {
=======
	public SqlSessionTemplate sqlSession() throws Exception{
>>>>>>> 11458d4a6f31a80f99d51ab9ec393550765e9e9d
		SqlSessionTemplate sqlSessionTemplate = new SqlSessionTemplate(sqlSessionFactory());
		return sqlSessionTemplate;
	}
	
<<<<<<< HEAD
	@Bean
	public DataSourceTransactionManager transactionManager(){
		return new DataSourceTransactionManager(dataSource());
=======
	
	@Bean
	public DataSourceTransactionManager transactionManager(){
		DataSourceTransactionManager dataSourceTransactionManager = new DataSourceTransactionManager(dataSource());
		return dataSourceTransactionManager;
>>>>>>> 11458d4a6f31a80f99d51ab9ec393550765e9e9d
	}
}
