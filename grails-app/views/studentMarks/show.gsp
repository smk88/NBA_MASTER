
<%@ page import="nba_vit.StudentMarks" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'studentMarks.label', default: 'StudentMarks')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-studentMarks" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-studentMarks" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list studentMarks">
			
				<g:if test="${studentMarksInstance?.actualMarks}">
				<li class="fieldcontain">
					<span id="actualMarks-label" class="property-label"><g:message code="studentMarks.actualMarks.label" default="Actual Marks" /></span>
					
						<span class="property-value" aria-labelledby="actualMarks-label"><g:fieldValue bean="${studentMarksInstance}" field="actualMarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentMarksInstance?.assessmentMarks}">
				<li class="fieldcontain">
					<span id="assessmentMarks-label" class="property-label"><g:message code="studentMarks.assessmentMarks.label" default="Assessment Marks" /></span>
					
						<span class="property-value" aria-labelledby="assessmentMarks-label"><g:fieldValue bean="${studentMarksInstance}" field="assessmentMarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentMarksInstance?.assessmentType}">
				<li class="fieldcontain">
					<span id="assessmentType-label" class="property-label"><g:message code="studentMarks.assessmentType.label" default="Assessment Type" /></span>
					
						<span class="property-value" aria-labelledby="assessmentType-label"><g:link controller="assessmentType" action="show" id="${studentMarksInstance?.assessmentType?.id}">${studentMarksInstance?.assessmentType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentMarksInstance?.courseOffering}">
				<li class="fieldcontain">
					<span id="courseOffering-label" class="property-label"><g:message code="studentMarks.courseOffering.label" default="Course Offering" /></span>
					
						<span class="property-value" aria-labelledby="courseOffering-label"><g:link controller="courseOffering" action="show" id="${studentMarksInstance?.courseOffering?.id}">${studentMarksInstance?.courseOffering?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentMarksInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="studentMarks.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${studentMarksInstance?.student?.id}">${studentMarksInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:studentMarksInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${studentMarksInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
