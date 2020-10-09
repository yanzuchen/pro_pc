/*数据连接池*/

const mysql = require('mysql');

const pool = mysql.createPool({
	host: '127.0.0.1',
	port: '3306',
	user: 'root',
	password: '',
	database: 'ggtx',
	connectionLimit: 20
});

module.exports = pool;