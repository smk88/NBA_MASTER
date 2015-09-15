<%@ page import="nba_vit.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="employee.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${employeeInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'employeeId', 'error')} ">
	<label for="employeeId">
		<g:message code="employee.employeeId.label" default="Employee Id" />
		
	</label>
	<g:textField name="employeeId" value="${employeeInstance?.employeeId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="employee.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="department" name="department.id" from="${nba_vit.Department.list()}" optionKey="id" required="" value="${employeeInstance?.department?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="employee.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${employeeInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'mob', 'error')} ">
	<label for="mob">
		<g:message code="employee.mob.label" default="Mob" />
		
	</label>
	<g:textField name="mob" value="${employeeInstance?.mob}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'program', 'error')} required">
	<label for="program">
		<g:message code="employee.program.label" default="Program" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="program" name="program.id" from="${nba_vit.Program.list()}" optionKey="id" required="" value="${employeeInstance?.program?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="employee.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="role" name="role.id" from="${nba_vit.Role.list()}" optionKey="id" required="" value="${employeeInstance?.role?.id}" class="many-to-one"/>
</div>

