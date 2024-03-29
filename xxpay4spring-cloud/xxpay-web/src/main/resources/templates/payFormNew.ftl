﻿<!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8">
    <title>支付中</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="pragma" content="no-cache"/><!-- 禁止浏览器从本地机的缓存中调阅页面内容 -->
    <meta http-equiv="Cache-Control" content="no-cache, must-revalidate"/>
    <meta http-equiv="expires" content="0"/> <!-- 定义网页 缓存中的过期时间-->
</head>

<body>
    <p>订单支付中，请稍候</p>
<form id="form1" method="${method?if_exists}" action="${action?if_exists}">
    <input name="code">
    <#if payParams? exists>
        <#list payParams?keys as key>
            <input type="hidden" readonly="readonly" name="${key}" value="${payParams["${key}"]}"/>
        </#list>
    </#if>
    <button type="submit">确认</button>
</form>
</body>

</html>