<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>商品展示页面</title>
    <link rel="stylesheet" href="/layui/css/layui.css"  media="all">
    <script src="/js/jquery-2.1.0.min.js"></script>
</head>
<body>
<table class="layui-hide" id="test" lay-filter="test"></table>
<table class="layui-hide" id="test" lay-filter="test"></table>

<form class="layui-form" action="">
    <!-- 商品名称-->
    <div class="layui-form-item">
        <label class="layui-form-label">商品名称</label>
        <div class="layui-input-inline">
            <input type="text" id="title" name="title"  placeholder="请输入"  class="layui-input">
        </div>
        <!-- 商品价格-->
        <div class="layui-inline">
            <label class="layui-form-label">价格</label>
            <div class="layui-input-inline" >
                <input type="text" id="price_min" name="price_min" placeholder="￥"  class="layui-input">
            </div>
            <div class="layui-form-mid">-</div>
            <div class="layui-input-inline">
                <input type="text" id="price_max" name="price_max" placeholder="￥" class="layui-input">
            </div>
        </div>
        <!-- 商品数量-->
        <label class="layui-form-label">商品数量</label>
        <div class="layui-input-inline">
            <input type="text" id="num" name="num" placeholder="请输入"  class="layui-input">
        </div>
        <!-- 商品状态-->
        <label class="layui-form-label">状态</label>
        <div class="layui-input-inline">
            <select id="status" name="status" >
                <option value=""></option>
                <option value="1">正常</option>
                <option value="2">下架</option>
                <option value="3">删除</option>
            </select>
        </div>
        <button type="button" id="btn_search" class="layui-btn layui-btn-radius">搜索</button>
    </div>
</form>

<div id="toolbarDemo" style="display: none" class="layui-btn-container">
    <button class="layui-btn layui-btn-sm" lay-event="selectDel">选中删除</button>
    <button class="layui-btn layui-btn-sm" lay-event="selectDown">选中下架</button>
    <button class="layui-btn layui-btn-sm" lay-event="selectUp">选中上架</button>
    <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">选中导出</button>
</div>


<div id="barDemo" style="display: none">
    <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</div>

<script src="/layui/layui.js" charset="utf-8"></script>
<script src="/js/showItem.js" ></script>
<!--商品状态的修改 不展示数字 展示状态-->
<!-- 这里的
    if(d.status ==1){
        正常
        }
这样是一组完整的
-->
<script id="itemStatus" type="text/html">
    {{#  if(d.status ==1){ }}
    正常
    {{#  } }}
    {{#  if(d.status ==2){ }}
    下架
    {{#  } }}
    {{#  if(d.status ==3){ }}
    删除
    {{#  } }}
</script>
</body>
</html>
