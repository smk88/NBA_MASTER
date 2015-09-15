
<%@ page import="nba_vit.StudentCourse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'studentCourse.label', default: 'StudentCourse')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-studentCourse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-studentCourse" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="studentCourse.courseOffering.label" default="Course Offering" /></th>
					
						<th><g:message code="studentCourse.student.label" default="Student" /></th>
					
						<g:sortableColumn property="studentDivision" title="${message(code: 'studentCourse.studentDivision.label', default: 'Student Division')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentCourseInstanceList}" status="i" var="studentCourseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${studentCourseInstance.id}">${fieldValue(bean: studentCourseInstance, field: "courseOffering")}</g:link></td>
					
						<td>${fieldValue(bean: studentCourseInstance, field: "student")}</td>
					
						<td>${fieldValue(bean: studentCourseInstance, field: "studentDivision")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studentCourseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
