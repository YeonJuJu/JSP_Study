<%@ tag language="java" pageEncoding="UTF-8" body-content="scriptless"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="start" required="true" type="java.lang.Integer" %>
<%@ attribute name="end" required="true" type="java.lang.Integer" %>
<%@ attribute name="var" required="true" rtexprvalue="false" %>
<%@ variable name-from-attribute="var" alias="number" scope="NESTED"  variable-class="java.lang.Integer" %>

<%
  for(int i = start; i <= end; i++){
%>  	
  	<c:set var="number" value="<%=i %>" />
  	<jsp:doBody></jsp:doBody> 
<%  	
  }
%>