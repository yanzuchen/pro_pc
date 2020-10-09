<template>
  <div id="app">
    <router-view />
  </div>
</template>
<style>
[v-cloak] { display: none; }
* { box-sizing: border-box; }
body {
  margin: 0 auto;
  padding: 0;
  text-align: center;
  font: normal 14px Microsoft YaHei;
  color: #333;
  background: #f0f3ef;
  word-break: break-all;
}
p,form,input,button,select,textarea {
  margin: 0;
  padding: 0;
}
a img { border: none; }
a {
  text-decoration: none;
  color: #333;
}
a:hover { font-weight: bold; }
</style>