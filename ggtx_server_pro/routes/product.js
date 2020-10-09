/*商品模块*/

//引入express
const express=require('express');

//引入数据连接池
const pool = require('./pool.js');

//创建后端路由器接口对象
const router = express.Router();

//首页商品分类
// http://localhost:5050/product/family(yes)
router.get('/family',(req, res)=>{
    let sql = 'select * from ggtx_index_product_family'
    pool.query(sql, (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})

//首页商品
//http://localhost:5050/product/index(yes)
router.get('/index',(req, res)=>{
    let sql = 'select * from ggtx_index_product'
    pool.query(sql, (err, result)=>{
        if(err) throw err
        res.send(result)
    })
})

//商品详情页
//http://localhost:5050/product/details?did=1
router.get('/details',(req,res)=>{
    let did=req.query.did
    let sql = 'select * from ggtx_product_details where did = ?';
    pool.query(sql,[did],(err,result)=>{
        if(err) throw err
        res.send(result)
    })
})

module.exports = router