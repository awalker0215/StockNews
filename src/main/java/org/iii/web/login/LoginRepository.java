package org.iii.web.login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;






import javax.inject.Inject;
//import javax.inject.Inject;
import javax.sql.DataSource;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("LoginRepository")
@Transactional
public class LoginRepository {

	private JdbcTemplate jdbcTemplate;

	@Inject	
	public void init(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	public List selectallUsers() {
		String sql = "SELECT * FROM users";
		List<Map<String, Object>> list = this.jdbcTemplate.queryForList(sql);
		HashMap<Integer,String> topicMap = new HashMap<Integer,String>();			
		return list;

	}
	
	public String selectUser(String username){
		String sql = "SELECT username FROM users WHERE username =?" ; 
		String accountName = this.jdbcTemplate.queryForObject(sql,String.class,username); 
		return accountName ; 

	}
	
	public Map<String, Object> selectUserall(String username){
		String sql = "SELECT * FROM users WHERE username =?" ; 
		Map<String, Object> map = this.jdbcTemplate.queryForMap(sql);		
		return map ; 

	}
	
	public String selectEmail(String username){
		String sql = "SELECT email FROM users WHERE username =?" ; 
		String email = this.jdbcTemplate.queryForObject(sql,String.class,username); 
		return email; 

	}
	
	public int insertUser(String username, String password, String email, String enabled)
	{ 
		String sql = "INSERT INTO users(username,password,email,enabled) VALUE(?,md5(?),?,?) ";
		int updateCount = jdbcTemplate.update(sql,
				new Object[] { username, password, email, enabled });
		return updateCount;

	}
	
	public void deleteUser(String username){
		String sql = "DELETE FROM users WHERE username =?" ; 
		this.jdbcTemplate.update(sql,username);	

	}
	//----------------------------------------------
	/*public List selectnews(String username) {
		String sql = "SELECT user_role_id FROM users where username = ?";
		String id = this.jdbcTemplate.queryForObject(sql,String.class,username);
		sql = "select * FROM news  where news_id not in (SELECT news_id  FROM `postback` WHERE user_role_id = ?) ORDER BY RAND() LIMIT 1"; 
		//select * FROM news  where news_id not in (SELECT news_id  FROM `postback` WHERE user_role_id in (SELECT user_role_id FROM users where username = ?)) ORDER BY RAND() LIMIT 1
		List list = this.jdbcTemplate.queryForList(sql,id);//
		
		return list;
	}*/
	
	public List selectnews(String username) {
		String sql = "SELECT user_role_id FROM users where username = ?";
		String id = this.jdbcTemplate.queryForObject(sql,String.class,username);
		sql = "select * FROM news where news_id not in (SELECT news_id FROM `postback` WHERE user_role_id = ? GROUP BY news_id HAVING count(target_id) = (SELECT COUNT(tid) FROM target WHERE news_id = `postback`.`news_id` GROUP by news_id)) ORDER BY RAND() LIMIT 1"; 
		//select * FROM news  where news_id not in (SELECT news_id  FROM `postback` WHERE user_role_id in (SELECT user_role_id FROM users where username = ?)) ORDER BY RAND() LIMIT 1
		List list = this.jdbcTemplate.queryForList(sql,id);//
		
		return list;
	}
	
	public List selectansnews(String nid) {
		String sql = "select * FROM news  where news_id =?"; 
		//select * FROM news  where news_id not in (SELECT news_id  FROM `postback` WHERE user_role_id in (SELECT user_role_id FROM users where username = ?)) ORDER BY RAND() LIMIT 1
		List list = this.jdbcTemplate.queryForList(sql,nid);//
		
		return list;
	}
	
	public List getnewsstock(String nid) {
		String sql = "SELECT * FROM `target` WHERE news_id = ? ORDER BY RAND() LIMIT 1"; 
		//select * FROM news  where news_id not in (SELECT news_id  FROM `postback` WHERE user_role_id in (SELECT user_role_id FROM users where username = ?)) ORDER BY RAND() LIMIT 1
		List list = this.jdbcTemplate.queryForList(sql,nid);//
		
		return list;
	}
	
	public List getuesernotanswernewsstock(String name,String nid) {
		String sql = "select * from target where news_id = ? and tid not in (SELECT target_id FROM `postback` where user_role_id = (SELECT user_role_id from users where username = ?)) ORDER BY RAND() LIMIT 1"; 
		//select * FROM news  where news_id not in (SELECT news_id  FROM `postback` WHERE user_role_id in (SELECT user_role_id FROM users where username = ?)) ORDER BY RAND() LIMIT 1
		List list = this.jdbcTemplate.queryForList(sql,nid,name);//
		
		return list;
	}
	
	public List getallnewspostback() {//0=bad,1=good,2=idk,3=it dont has
		//String sql = "SELECT postback.news_id as id,COUNT(postback.judge_state) as totalcount,postback.reason,Count(case when (postback.judge_state=0) then 1 else null end) as bcount,Count(case when (postback.judge_state=1) then 1 else null end) as gcount,Count(case when (postback.judge_state=2) then 1 else null end) as idkcount,news.news_title as title FROM news left join `postback` ON postback.news_id = news.news_id GROUP by postback.news_id"; 
		String sql = "SELECT news.news_id as id,COUNT(postback.judge_state) as totalcount,postback.reason,Count(case when (postback.judge_state=0) then 1 else null end) as bcount,Count(case when (postback.judge_state=1) then 1 else null end) as gcount,Count(case when (postback.judge_state=2) then 1 else null end) as idkcount,news.news_title as title FROM news left join `postback` ON postback.news_id = news.news_id GROUP by news.news_id";
		//select * FROM news  where news_id not in (SELECT news_id  FROM `postback` WHERE user_role_id in (SELECT user_role_id FROM users where username = ?)) ORDER BY RAND() LIMIT 1
		List list = this.jdbcTemplate.queryForList(sql);//
		
		return list;
	}
	
	public List newsPostbackinfo(String nid) {//0=bad,1=good,2=idk,3=it dont has
		//String sql = "SELECT postback.news_id as id,COUNT(postback.judge_state) as totalcount,postback.reason,Count(case when (postback.judge_state=0) then 1 else null end) as bcount,Count(case when (postback.judge_state=1) then 1 else null end) as gcount,Count(case when (postback.judge_state=2) then 1 else null end) as idkcount,news.news_title as title FROM news left join `postback` ON postback.news_id = news.news_id GROUP by postback.news_id"; 
		String sql = "SELECT reason,time,(case judge_state WHEN 0 THEN convert(binary '壞' using utf8) WHEN 1 THEN convert(binary '好' using utf8) WHEN 2 THEN convert(binary '不確定' using utf8) WHEN 3 THEN convert(binary '無此股票' using utf8) END) as j_status,(select target.target from target WHERE target.tid = postback.target_id) as target,(select users.username from users WHERE users.user_role_id = postback.user_role_id) as user FROM `postback` WHERE news_id = ?";
		List list = this.jdbcTemplate.queryForList(sql,nid);
		System.out.println(list);
		return list;
	}
	
	public int insertpostback(String nid, String tid, String reason,String status,String username,String time)
	{ 
		String sql = "SELECT user_role_id FROM users where username = ?";
		String uid = this.jdbcTemplate.queryForObject(sql,String.class,username);
		sql = "INSERT INTO postback(news_id,target_id,reason,judge_state,user_role_id,time) VALUE(?,?,?,?,?,?) ";
		int updateCount = jdbcTemplate.update(sql,
				new Object[] { nid,tid,reason,status,uid,time });
		return updateCount;

	}
}
