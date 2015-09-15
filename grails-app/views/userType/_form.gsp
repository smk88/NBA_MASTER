<%@ page import="nba_vit.UserType" %>



<div class="fieldcontain ${hasErrors(bean: userTypeInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="userType.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${userTypeInstance?.type}"/>
</div>

