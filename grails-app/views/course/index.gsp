
<%@ page import="nba_vit.Course" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'course.label', default: 'Course')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-course" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-course" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="courseCode" title="${message(code: 'course.courseCode.label', default: 'Course Code')}" />
					
						<g:sortableColumn property="courseCredit" title="${message(code: 'course.courseCredit.label', default: 'Course Credit')}" />
					
						<g:sortableColumn property="courseName" title="${message(code: 'course.courseName.label', default: 'Course Name')}" />
					
						<th><g:message code="course.courseType.label" default="Course Type" /></th>
					
						<th><g:message code="course.coursetype.label" default="Coursetype" /></th>
					
						<th><g:message code="course.employee.label" default="Employee" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${courseInstanceList}" status="i" var="courseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${courseInstance.id}">${fieldValue(bean: courseInstance, field: "courseCode")}</g:link></td>
					
						<td>${fieldValue(bean: courseInstance, field: "courseCredit")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "courseName")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "courseType")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "coursetype")}</td>
					
						<td>${fieldValue(bean: courseInstance, field: "employee")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${courseInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
