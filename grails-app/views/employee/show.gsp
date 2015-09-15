
<%@ page import="nba_vit.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employee">
			
				<g:if test="${employeeInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="employee.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${employeeInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.employeeId}">
				<li class="fieldcontain">
					<span id="employeeId-label" class="property-label"><g:message code="employee.employeeId.label" default="Employee Id" /></span>
					
						<span class="property-value" aria-labelledby="employeeId-label"><g:fieldValue bean="${employeeInstance}" field="employeeId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.department}">
				<li class="fieldcontain">
					<span id="department-label" class="property-label"><g:message code="employee.department.label" default="Department" /></span>
					
						<span class="property-value" aria-labelledby="department-label"><g:link controller="department" action="show" id="${employeeInstance?.department?.id}">${employeeInstance?.department?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="employee.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${employeeInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.mob}">
				<li class="fieldcontain">
					<span id="mob-label" class="property-label"><g:message code="employee.mob.label" default="Mob" /></span>
					
						<span class="property-value" aria-labelledby="mob-label"><g:fieldValue bean="${employeeInstance}" field="mob"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.program}">
				<li class="fieldcontain">
					<span id="program-label" class="property-label"><g:message code="employee.program.label" default="Program" /></span>
					
						<span class="property-value" aria-labelledby="program-label"><g:link controller="program" action="show" id="${employeeInstance?.program?.id}">${employeeInstance?.program?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.role}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="employee.role.label" default="Role" /></span>
					
						<span class="property-value" aria-labelledby="role-label"><g:link controller="role" action="show" id="${employeeInstance?.role?.id}">${employeeInstance?.role?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:employeeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${employeeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
