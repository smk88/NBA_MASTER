
<%@ page import="nba_vit.CourseOutcome" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'courseOutcome.label', default: 'CourseOutcome')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-courseOutcome" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-courseOutcome" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="acadamicYear" title="${message(code: 'courseOutcome.acadamicYear.label', default: 'Acadamic Year')}" />
					
						<g:sortableColumn property="coCode" title="${message(code: 'courseOutcome.coCode.label', default: 'Co Code')}" />
					
						<g:sortableColumn property="coStatement" title="${message(code: 'courseOutcome.coStatement.label', default: 'Co Statement')}" />
					
						<th><g:message code="courseOutcome.course.label" default="Course" /></th>
					
						<th><g:message code="courseOutcome.employee.label" default="Employee" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${courseOutcomeInstanceList}" status="i" var="courseOutcomeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${courseOutcomeInstance.id}">${fieldValue(bean: courseOutcomeInstance, field: "acadamicYear")}</g:link></td>
					
						<td>${fieldValue(bean: courseOutcomeInstance, field: "coCode")}</td>
					
						<td>${fieldValue(bean: courseOutcomeInstance, field: "coStatement")}</td>
					
						<td>${fieldValue(bean: courseOutcomeInstance, field: "course")}</td>
					
						<td>${fieldValue(bean: courseOutcomeInstance, field: "employee")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${courseOutcomeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
