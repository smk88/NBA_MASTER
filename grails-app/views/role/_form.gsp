<%@ page import="nba_vit.Role" %>



<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'role', 'error')} ">
	<label for="role">
		<g:message code="role.role.label" default="Role" />
		
	</label>
	<g:textField name="role" value="${roleInstance?.role}"/>
</div>

