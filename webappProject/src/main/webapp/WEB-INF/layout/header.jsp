<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>  
<s:url action="getTodayTestAction.action" var="urlFindData" />
<s:url action="" var="urlHome" />
<div class="jumbotron">
  <h1>Techie Bootstrap 3</h1>
</div>  

<nav class="navbar navbar-inverse" role="navigation">
<div class="collapse navbar-collapse navbar-ex2-collapse ">
  <ul class="nav navbar-nav">
    <li id="home"><a href="<s:property value="#urlHome" />">Home</a></li>
    <li id="findData"><a href="<s:property value="#urlFindData" />">FindData</a></li>
    
  </ul>
</div>
</nav>
