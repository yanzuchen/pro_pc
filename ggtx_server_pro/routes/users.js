/*用户模块接口*/

//引入express
var express = require('express');

//引入数据连接池
const pool = require('./pool.js');
// console.log(pool);

var router = express.Router();

//用户登录接口
//http://localhost:5050/user/login
//http://localhost:5050/user/login?uname=crx&upwd=123456
//get->post query->body
router.post('/login',(req,res) => {
	//获取当前提交的用户信息
	let uname = req.body.uname;
	let upwd = req.body.upwd;
	let sql = 'select * from ggtx_user where uname=? and upwd=?'
	//设置服务器响应头信息 解决跨域问题
    // res.set('Access-Control-Allow-Origin', 'http://localhost:5050')
	pool.query(sql,[uname,upwd],(err,result) => {
		if(err) throw err;
		//查询数据库表中的数据，有输入的账号和密码即可登录成功
		if(result.length > 0) return res.send({code: 1,msg: 'success',result: result[0]});
		res.send({code: 0,msg: 'fail'})
	})
})

//用户注册接口
//http://localhost:5050/user/register
//http://localhost:5050/user/register?uname=陈斌&upwd=123456&uphone=13812345678&uadd=四川省成都市
//get->post
//query->body
router.post('/register',(req,res) => {
	//获取用户注册信息
	let obj=req.body;
	console.log(obj);
	let uname=req.body.uname;
	// console.log(uname);
	
	let sql= 'select uname from ggtx_user where uname=?'
	pool.query(sql,[uname],(err,result) => {
		if (err) throw err;
		//用户名存在
		if(result.length > 0){
			res.send({code: 0,msg: 'fail'})
		}else{
			let sql= 'insert into ggtx_user set ?'
			pool.query(sql,[obj],(err,result) => {
				if(err) throw err;
				if(result.affectedRows > 0){
					//设置服务器响应头信息 解决跨域问题
                    // res.set('Access-Control-Allow-Origin', 'http://localhost:8080')
					res.send({code: 1,msg: 'success'})
				}else{
					res.send({code: 0,msg: 'fail'})
				}
			})
		}
	})
})

module.exports = router;
