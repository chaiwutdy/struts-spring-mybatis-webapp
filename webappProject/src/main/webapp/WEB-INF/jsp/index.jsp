<%@ taglib prefix="s" uri="/struts-tags" %>   
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<s:form action="strutsAction" namespace="/" method="post" name="strutsForm" cssClass="form-inline">
	<s:textfield name="firstName" size="30" label="firstName" cssClass="form-control"/>
	<s:textfield name="lastName" size="30" label="lastName" cssClass="form-control"/>
	<s:textfield name="location" size="30" label="location" cssClass="form-control"/>
	<s:submit  align="right" cssClass="btn btn-primary btn-lg"/>
</s:form>

<script type="text/javascript">
$( document ).ready(function() {
	$("#findData").removeClass("active");
	$("#home").addClass("active");
});
</script>
