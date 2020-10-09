// 后端服务器
var createError = require('http-errors');
var express = require('express');
//引入body-parser获取post方式传递的数据
var bodyParser = require('body-parser');
//引入cors中间件解决跨域
var cors = require('cors');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

//引入用户路由接口
var userRouter = require('./routes/users');
var carRouter = require('./routes/carousel');
var proRouter = require('./routes/product');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

app.use(cors({
  origin: ['http://127.0.0.1:8080', 'http://localhost:8080']
}))

//在路由器之前，应用body-parser中间件，将post请求的数据解析为对象
app.use(bodyParser.urlencoded({
  extended: false
}));

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

//将用户路由器挂载到web服务器，添加前缀
app.use('/user', userRouter);
app.use('/carousel', carRouter);
app.use('/product', proRouter);

// catch 404 and forward to error handler
app.use(function (req, res, next) {
  next(createError(404));
});

// error handler
app.use(function (err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
