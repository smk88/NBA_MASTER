
<%@ page import="nba_vit.StudentCourse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'studentCourse.label', default: 'StudentCourse')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-studentCourse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-studentCourse" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list studentCourse">
			
				<g:if test="${studentCourseInstance?.courseOffering}">
				<li class="fieldcontain">
					<span id="courseOffering-label" class="property-label"><g:message code="studentCourse.courseOffering.label" default="Course Offering" /></span>
					
						<span class="property-value" aria-labelledby="courseOffering-label"><g:link controller="courseOffering" action="show" id="${studentCourseInstance?.courseOffering?.id}">${studentCourseInstance?.courseOffering?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentCourseInstance?.student}">
				<li class="fieldcontain">
					<span id="student-label" class="property-label"><g:message code="studentCourse.student.label" default="Student" /></span>
					
						<span class="property-value" aria-labelledby="student-label"><g:link controller="student" action="show" id="${studentCourseInstance?.student?.id}">${studentCourseInstance?.student?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentCourseInstance?.studentDivision}">
				<li class="fieldcontain">
					<span id="studentDivision-label" class="property-label"><g:message code="studentCourse.studentDivision.label" default="Student Division" /></span>
					
						<span class="property-value" aria-labelledby="studentDivision-label"><g:fieldValue bean="${studentCourseInstance}" field="studentDivision"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:studentCourseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${studentCourseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
