<%@ page import="nba_vit.Department" %>



<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="department.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${departmentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'institute', 'error')} required">
	<label for="institute">
		<g:message code="department.institute.label" default="Institute" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="institute" name="institute.id" from="${nba_vit.Institute.list()}" optionKey="id" required="" value="${departmentInstance?.institute?.id}" class="many-to-one"/>
</div>

