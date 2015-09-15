
<%@ page import="nba_vit.TeacherCourse" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'teacherCourse.label', default: 'TeacherCourse')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-teacherCourse" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-teacherCourse" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list teacherCourse">
			
				<g:if test="${teacherCourseInstance?.courseOffering}">
				<li class="fieldcontain">
					<span id="courseOffering-label" class="property-label"><g:message code="teacherCourse.courseOffering.label" default="Course Offering" /></span>
					
						<span class="property-value" aria-labelledby="courseOffering-label"><g:link controller="courseOffering" action="show" id="${teacherCourseInstance?.courseOffering?.id}">${teacherCourseInstance?.courseOffering?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherCourseInstance?.employee}">
				<li class="fieldcontain">
					<span id="employee-label" class="property-label"><g:message code="teacherCourse.employee.label" default="Employee" /></span>
					
						<span class="property-value" aria-labelledby="employee-label"><g:link controller="employee" action="show" id="${teacherCourseInstance?.employee?.id}">${teacherCourseInstance?.employee?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${teacherCourseInstance?.teacherDivison}">
				<li class="fieldcontain">
					<span id="teacherDivison-label" class="property-label"><g:message code="teacherCourse.teacherDivison.label" default="Teacher Divison" /></span>
					
						<span class="property-value" aria-labelledby="teacherDivison-label"><g:fieldValue bean="${teacherCourseInstance}" field="teacherDivison"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:teacherCourseInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${teacherCourseInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
