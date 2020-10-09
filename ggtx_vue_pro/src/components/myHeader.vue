<template>
  <div>
    <div class="header1">
      <div>
        你好！欢迎光临“广供天下”，广元供销供天下！
        <span>
          <router-link to="/login">会员登录</router-link> |
          <router-link to="/register">注册会员</router-link>
        </span>
      </div>
    </div>
    <div class="header2">
      <div class="db">
        <img src="/img/logo.png" class="logo" />
        <ul class="dbmenu">
          <li>
            <a href="/" style="background: #01567b; color: #fff">商城首页</a>
          </li>
          <li>
            <a href="/">产品分类 ▼</a>
            <ul>
              <li>
                <a>▸ 水果蔬菜</a>
                <ul>
                  <li><a>• 苹果</a></li>
                  <li><a>• 橙子</a></li>
                  <li><a>• 奇异果、猕猴桃</a></li>
                  <li><a>• 车厘子、樱桃</a></li>
                  <li><a>• 葡萄、提子</a></li>
                  <li><a>• 蓝莓</a></li>
                  <li><a>• 柚子</a></li>
                  <li><a>• 梨</a></li>
                  <li><a>• 菠萝、凤梨</a></li>
                  <li><a>• 桔、橘柠檬</a></li>
                  <li><a>• 桃、李、杏</a></li>
                  <li><a>• 草莓</a></li>
                  <li><a>• 其他水果</a></li>
                  <li><a>• 蔬菜 </a></li>
                </ul>
              </li>
              <li>
                <a>▸ 南北干货</a>
                <ul>
                  <li><a>• 山珍特产</a></li>
                  <li><a>• 方便食品</a></li>
                  <li><a>• 熟食腊味 </a></li>
                </ul>
              </li>
              <li>
                <a>▸ 禽肉蛋品</a>
                <ul>
                  <li><a>• 猪牛羊肉</a></li>
                  <li><a>• 鸡鸭鹅禽肉</a></li>
                  <li><a>• 水产品</a></li>
                  <li><a>• 蛋类</a></li>
                  <li><a>• 冻品</a></li>
                  <li><a>• 其他 </a></li>
                </ul>
              </li>
              <li>
                <a>▸ 粮油调味</a>
                <ul>
                  <li><a>• 米面杂粮</a></li>
                  <li><a>• 食用油</a></li>
                  <li><a>• 调味品</a></li>
                  <li><a>• 南北干货</a></li>
                  <li><a>• 方便食品</a></li>
                  <li><a>• 有机食品 </a></li>
                </ul>
              </li>
              <li>
                <a>▸ 饮料冲调</a>
                <ul>
                  <li><a>• 饮用水</a></li>
                  <li><a>• 饮料</a></li>
                  <li><a>• 牛奶乳品</a></li>
                  <li><a>• 咖啡、奶茶</a></li>
                  <li><a>• 冲饮谷物</a></li>
                  <li><a>• 蜂蜜、柚子茶</a></li>
                  <li><a>• 成人奶粉 </a></li>
                </ul>
              </li>
              <li>
                <a>▸ 休闲食品</a>
                <ul>
                  <li><a>• 休闲零食</a></li>
                  <li><a>• 坚果炒货</a></li>
                  <li><a>• 肉干肉脯</a></li>
                  <li><a>• 蜜饯果干</a></li>
                  <li><a>• 糖果、巧克力</a></li>
                  <li><a>• 饼干蛋糕</a></li>
                  <li><a>• 无糖食品 </a></li>
                </ul>
              </li>
              <li>
                <a>▸ 酒水茶类</a>
                <ul>
                  <li><a>• 绿茶</a></li>
                  <li><a>• 红茶</a></li>
                  <li><a>• 花茶</a></li>
                  <li><a>• 其他茶类</a></li>
                  <li><a>• 白酒</a></li>
                  <li><a>• 红酒</a></li>
                  <li><a>• 其他酒类 </a></li>
                </ul>
              </li>
              <li>
                <a>▸ 文旅产品</a>
                <ul>
                  <li><a>• 刺绣产品</a></li>
                  <li><a>• 饰品</a></li>
                  <li><a>• 手杖</a></li>
                  <li><a>• 根雕</a></li>
                  <li><a>• 其他产品</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li>
            <a href="/">扶贫专区 ▼</a>
            <ul>
              <li><a href="/">• 广元扶贫产品专区</a></li>
              <li>
                <a href="/">• 广元优质特色农产品(2019)目录</a>
              </li>
              <li><a href="/">• 2020年有机产品名录 </a></li>
            </ul>
          </li>
          <li><a href="/">农资商城</a></li>
          <li><a href="/">关于我们</a></li>
        </ul>
      </div>
    </div>
  </div>
</template>
<style scoped>
a {
  text-decoration: none;
}
.header1 {
  display: block;
  margin: auto;
  width: 100%;
  line-height: 48px;
  border-bottom: 1px solid #ddd;
  background: #f4f4f4;
}
.header1 div {
  display: block;
  margin: auto;
  width: 1200px;
  text-align: left;
  position: relative;
}
.header1 div span {
  display: inline-block;
  position: absolute;
  right: 0;
}
.header1 div span a:first-child {
  color: #003366;
}
.header1 div span a:last-child {
  color: green;
}
.header2 {
  display: block;
  margin: 0 auto;
  width: 100%;
  border-bottom: 2px solid #0276a9;
}
.db {
  display: block;
  margin: 0 auto;
  width: 1200px;
  height: 110px;
  position: relative;
  text-align: left;
}
.logo {
  display: inline-block;
  width: 394px;
  height: 90px;
  position: absolute;
  left: 0;
  bottom: 0;
}

.dbmenu {
  display: inline-block;
  margin: 0 auto;
  padding: 0;
  list-style: none;
  z-index: 99999;
  position: absolute;
  right: 0;
  bottom: 0;
}
.dbmenu li {
  position: relative;
  float: left;
  width: 150px;
  line-height: 48px;
}
.dbmenu li:hover a {
  color: #fff;
  background: #0276a9;
  cursor: pointer;
}
.dbmenu li a {
  display: block;
  width: 100%;
  height: 100%;
  font-size: 16px;
  text-align: center;
  border-radius: 3px 3px 0 0;
  color: #003366;
}

.dbmenu li ul {
  display: none;
  list-style: none;
  margin: 0;
  padding: 0;
  position: absolute;
  top: 48px;
  left: 0;
  width: 240px;
}
.dbmenu li ul li {
  display: block;
  margin: 0;
  padding: 0;
  width: 100%;
  line-height: 48px;
}
.dbmenu li ul li a {
  display: block;
  width: 100%;
  padding-left: 10px;
  text-align: left;
  position: relative;
  border-bottom: dotted 1px #028cc9;
  color: #333;
  font-weight: normal;
  border-radius: 0;
  font-size: 14px;
}
.dbmenu li ul li a:hover {
  background-color: #01567b;
}
.dbmenu li:hover ul {
  display: block;
}

.dbmenu li ul li ul {
  display: none;
  list-style: none;
  margin: 0;
  padding: 0;
  position: absolute;
  top: 0;
  left: 240px;
  width: 100%;
  background: red;
}
.dbmenu li:hover ul li ul li a {
  background: #0282ba;
}
.dbmenu li:hover ul li ul li a:hover {
  background-color: #01567b;
}
.dbmenu li:hover ul li ul {
  display: none;
}
.dbmenu li ul li:hover ul {
  display: block;
}
</style>