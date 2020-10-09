/*轮播图模块*/

//引入express
var express = require('express');

//引入数据连接池
const pool = require('./pool.js');

//创建后端路由器接口对象
var router = express.Router();

// http://localhost:5050/carousel/car(yes)
router.get('/car',(req,res)=>{
  let sql = 'select * from ggtx_index_carousel'
  pool.query(sql,(err,result)=>{
      if(err) throw err
      res.send(result)
  })
})

module.exports = router;
