
<%@ page import="nba_vit.CourseOffering" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'courseOffering.label', default: 'CourseOffering')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-courseOffering" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-courseOffering" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="acadamicYear" title="${message(code: 'courseOffering.acadamicYear.label', default: 'Acadamic Year')}" />
					
						<th><g:message code="courseOffering.course.label" default="Course" /></th>
					
						<g:sortableColumn property="module" title="${message(code: 'courseOffering.module.label', default: 'Module')}" />
					
						<g:sortableColumn property="semester" title="${message(code: 'courseOffering.semester.label', default: 'Semester')}" />
					
						<g:sortableColumn property="year" title="${message(code: 'courseOffering.year.label', default: 'Year')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${courseOfferingInstanceList}" status="i" var="courseOfferingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${courseOfferingInstance.id}">${fieldValue(bean: courseOfferingInstance, field: "acadamicYear")}</g:link></td>
					
						<td>${fieldValue(bean: courseOfferingInstance, field: "course")}</td>
					
						<td>${fieldValue(bean: courseOfferingInstance, field: "module")}</td>
					
						<td>${fieldValue(bean: courseOfferingInstance, field: "semester")}</td>
					
						<td>${fieldValue(bean: courseOfferingInstance, field: "year")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${courseOfferingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
