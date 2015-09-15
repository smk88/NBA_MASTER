
<%@ page import="nba_vit.CoMarksMapping" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'coMarksMapping.label', default: 'CoMarksMapping')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-coMarksMapping" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-coMarksMapping" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="actualMarks" title="${message(code: 'coMarksMapping.actualMarks.label', default: 'Actual Marks')}" />
					
						<g:sortableColumn property="assessmentMarks" title="${message(code: 'coMarksMapping.assessmentMarks.label', default: 'Assessment Marks')}" />
					
						<th><g:message code="coMarksMapping.assessmentType.label" default="Assessment Type" /></th>
					
						<th><g:message code="coMarksMapping.course.label" default="Course" /></th>
					
						<th><g:message code="coMarksMapping.courseOffering.label" default="Course Offering" /></th>
					
						<th><g:message code="coMarksMapping.employee.label" default="Employee" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${coMarksMappingInstanceList}" status="i" var="coMarksMappingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${coMarksMappingInstance.id}">${fieldValue(bean: coMarksMappingInstance, field: "actualMarks")}</g:link></td>
					
						<td>${fieldValue(bean: coMarksMappingInstance, field: "assessmentMarks")}</td>
					
						<td>${fieldValue(bean: coMarksMappingInstance, field: "assessmentType")}</td>
					
						<td>${fieldValue(bean: coMarksMappingInstance, field: "course")}</td>
					
						<td>${fieldValue(bean: coMarksMappingInstance, field: "courseOffering")}</td>
					
						<td>${fieldValue(bean: coMarksMappingInstance, field: "employee")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${coMarksMappingInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
