
<%@ page import="nba_vit.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-employee" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'employee.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="employeeId" title="${message(code: 'employee.employeeId.label', default: 'Employee Id')}" />
					
						<th><g:message code="employee.department.label" default="Department" /></th>
					
						<g:sortableColumn property="email" title="${message(code: 'employee.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="mob" title="${message(code: 'employee.mob.label', default: 'Mob')}" />
					
						<th><g:message code="employee.program.label" default="Program" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${employeeInstanceList}" status="i" var="employeeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${employeeInstance.id}">${fieldValue(bean: employeeInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: employeeInstance, field: "employeeId")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "department")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "mob")}</td>
					
						<td>${fieldValue(bean: employeeInstance, field: "program")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${employeeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
