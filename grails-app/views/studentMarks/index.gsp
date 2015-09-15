
<%@ page import="nba_vit.StudentMarks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'studentMarks.label', default: 'StudentMarks')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-studentMarks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-studentMarks" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="actualMarks" title="${message(code: 'studentMarks.actualMarks.label', default: 'Actual Marks')}" />
					
						<g:sortableColumn property="assessmentMarks" title="${message(code: 'studentMarks.assessmentMarks.label', default: 'Assessment Marks')}" />
					
						<th><g:message code="studentMarks.assessmentType.label" default="Assessment Type" /></th>
					
						<th><g:message code="studentMarks.courseOffering.label" default="Course Offering" /></th>
					
						<th><g:message code="studentMarks.student.label" default="Student" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${studentMarksInstanceList}" status="i" var="studentMarksInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${studentMarksInstance.id}">${fieldValue(bean: studentMarksInstance, field: "actualMarks")}</g:link></td>
					
						<td>${fieldValue(bean: studentMarksInstance, field: "assessmentMarks")}</td>
					
						<td>${fieldValue(bean: studentMarksInstance, field: "assessmentType")}</td>
					
						<td>${fieldValue(bean: studentMarksInstance, field: "courseOffering")}</td>
					
						<td>${fieldValue(bean: studentMarksInstance, field: "student")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${studentMarksInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
