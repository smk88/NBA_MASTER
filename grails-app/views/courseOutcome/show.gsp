
<%@ page import="nba_vit.CourseOutcome" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'courseOutcome.label', default: 'CourseOutcome')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-courseOutcome" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-courseOutcome" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list courseOutcome">
			
				<g:if test="${courseOutcomeInstance?.acadamicYear}">
				<li class="fieldcontain">
					<span id="acadamicYear-label" class="property-label"><g:message code="courseOutcome.acadamicYear.label" default="Acadamic Year" /></span>
					
						<span class="property-value" aria-labelledby="acadamicYear-label"><g:fieldValue bean="${courseOutcomeInstance}" field="acadamicYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseOutcomeInstance?.coCode}">
				<li class="fieldcontain">
					<span id="coCode-label" class="property-label"><g:message code="courseOutcome.coCode.label" default="Co Code" /></span>
					
						<span class="property-value" aria-labelledby="coCode-label"><g:fieldValue bean="${courseOutcomeInstance}" field="coCode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseOutcomeInstance?.coStatement}">
				<li class="fieldcontain">
					<span id="coStatement-label" class="property-label"><g:message code="courseOutcome.coStatement.label" default="Co Statement" /></span>
					
						<span class="property-value" aria-labelledby="coStatement-label"><g:fieldValue bean="${courseOutcomeInstance}" field="coStatement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseOutcomeInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="courseOutcome.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${courseOutcomeInstance?.course?.id}">${courseOutcomeInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseOutcomeInstance?.employee}">
				<li class="fieldcontain">
					<span id="employee-label" class="property-label"><g:message code="courseOutcome.employee.label" default="Employee" /></span>
					
						<span class="property-value" aria-labelledby="employee-label"><g:link controller="employee" action="show" id="${courseOutcomeInstance?.employee?.id}">${courseOutcomeInstance?.employee?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:courseOutcomeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${courseOutcomeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
