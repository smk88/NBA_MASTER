
<%@ page import="nba_vit.MarkingScheme" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'markingScheme.label', default: 'MarkingScheme')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-markingScheme" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-markingScheme" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="markingScheme.courseType.label" default="Course Type" /></th>
					
						<g:sortableColumn property="endSEmesterExam" title="${message(code: 'markingScheme.endSEmesterExam.label', default: 'End SE mester Exam')}" />
					
						<g:sortableColumn property="homeworkAssignment" title="${message(code: 'markingScheme.homeworkAssignment.label', default: 'Homework Assignment')}" />
					
						<g:sortableColumn property="laboratry" title="${message(code: 'markingScheme.laboratry.label', default: 'Laboratry')}" />
					
						<g:sortableColumn property="reviewFile" title="${message(code: 'markingScheme.reviewFile.label', default: 'Review File')}" />
					
						<g:sortableColumn property="reviewFour" title="${message(code: 'markingScheme.reviewFour.label', default: 'Review Four')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${markingSchemeInstanceList}" status="i" var="markingSchemeInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${markingSchemeInstance.id}">${fieldValue(bean: markingSchemeInstance, field: "courseType")}</g:link></td>
					
						<td>${fieldValue(bean: markingSchemeInstance, field: "endSEmesterExam")}</td>
					
						<td>${fieldValue(bean: markingSchemeInstance, field: "homeworkAssignment")}</td>
					
						<td>${fieldValue(bean: markingSchemeInstance, field: "laboratry")}</td>
					
						<td>${fieldValue(bean: markingSchemeInstance, field: "reviewFile")}</td>
					
						<td>${fieldValue(bean: markingSchemeInstance, field: "reviewFour")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${markingSchemeInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
