<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sj" uri="/struts-jquery-tags"%>  
<%@ taglib prefix="sjg" uri="/struts-jquery-grid-tags"%> 
<%-- 
<s:iterator value="mytNdcreceiveds">
	<s:property value="frameno" /> s<br/>
</s:iterator>

<table border="1">
<tr>
<td>DummyTestColumn</td>
</tr>
<s:iterator value="mytNdcreceiveds">
  <tr>
  	<td>
  		<s:property value="frameno" />
  		<s:property value="oid" />
  	<td>
  </tr>
</s:iterator>
</table>
 --%>
 <%-- 
<s:url id="remoteurl" action="getTodayTestDataAction" />


<sjg:grid id="gridtable" caption="Roles" dataType="json"
 	href="%{remoteurl}" 
 	pager="true" 
 	gridModel="mytNdcreceiveds"
 	rowNum="10" rownumbers="true"
	width="800" navigator="true" 
	navigatorView="false">

	<sjg:gridColumn name="oid" index="oid" title="Role Name" sortable="true" formatter="editrole" />
	<sjg:gridColumn name="frameno" index="frameno" title="Created Date" sortable="true" />

</sjg:grid>  --%>
<sj:head jqueryui="true" jquerytheme="redmond" />
<s:form id="myForm" action="getTodayTestDataAction"   namespace="/" method="post" cssClass="form-inline">
	<div>
		<%-- <table>
			<tr>
				<td><s:textfield name="firstName" size="30" label="firstName" cssClass="form-control"/></td>
			</tr>
		</table> --%>
		<sj:datepicker displayFormat="yy-M-dd" label="date" name="firstName"></sj:datepicker>
		<br>
		<div><sj:a onSuccessTopics="reloadGrid" button="true" indicator="indicator">Search</sj:a></div>
	</div>
</s:form>

<div id="searchResults">
<s:url id="remoteurl" action="getTodayTestDataAction" />
<sjg:grid id="gridtable" caption="Result"
	pager="true" 
	dataType="json" 
	reloadTopics="reloadGrid" 
	gridModel="mytNdcreceiveds" 
	href="%{remoteurl}" 
	rownumbers="true"
	width="720"
	formIds="myForm">
            
	<sjg:gridColumn name="oid" index="oid" title="OID" />
	<sjg:gridColumn name="frameno" index="frameno" title="FRAME_NO" />
</sjg:grid> 
</div>



<%-- <s:url id="remoteurl" action="getTodayTestDataAction" />
<sjg:grid id="gridtable" caption="Result" 
	dataType="json"
 	href="%{remoteurl}" 
 	gridModel="mytNdcreceiveds"
 	pager="true"
	rowList="10,15,20"
	rowNum="15"
	rownumbers="true"
	width="720">

	<sjg:gridColumn name="oid" index="oid" title="OID" />
	<sjg:gridColumn name="frameno" index="frameno" title="FRAME_NO" />
</sjg:grid>  --%>

<script type="text/javascript">
$( document ).ready(function() {
	
	$("#home").removeClass("active");
	$("#findData").addClass("active");
});
</script>