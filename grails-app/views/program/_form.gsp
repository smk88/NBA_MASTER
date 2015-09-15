<%@ page import="nba_vit.Program" %>



<div class="fieldcontain ${hasErrors(bean: programInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="program.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${programInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: programInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="program.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="department" name="department.id" from="${nba_vit.Department.list()}" optionKey="id" required="" value="${programInstance?.department?.id}" class="many-to-one"/>
</div>

