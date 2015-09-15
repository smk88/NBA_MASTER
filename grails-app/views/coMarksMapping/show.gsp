
<%@ page import="nba_vit.CoMarksMapping" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'coMarksMapping.label', default: 'CoMarksMapping')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-coMarksMapping" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-coMarksMapping" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list coMarksMapping">
			
				<g:if test="${coMarksMappingInstance?.actualMarks}">
				<li class="fieldcontain">
					<span id="actualMarks-label" class="property-label"><g:message code="coMarksMapping.actualMarks.label" default="Actual Marks" /></span>
					
						<span class="property-value" aria-labelledby="actualMarks-label"><g:fieldValue bean="${coMarksMappingInstance}" field="actualMarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coMarksMappingInstance?.assessmentMarks}">
				<li class="fieldcontain">
					<span id="assessmentMarks-label" class="property-label"><g:message code="coMarksMapping.assessmentMarks.label" default="Assessment Marks" /></span>
					
						<span class="property-value" aria-labelledby="assessmentMarks-label"><g:fieldValue bean="${coMarksMappingInstance}" field="assessmentMarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${coMarksMappingInstance?.assessmentType}">
				<li class="fieldcontain">
					<span id="assessmentType-label" class="property-label"><g:message code="coMarksMapping.assessmentType.label" default="Assessment Type" /></span>
					
						<span class="property-value" aria-labelledby="assessmentType-label"><g:link controller="assessmentType" action="show" id="${coMarksMappingInstance?.assessmentType?.id}">${coMarksMappingInstance?.assessmentType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${coMarksMappingInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="coMarksMapping.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${coMarksMappingInstance?.course?.id}">${coMarksMappingInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${coMarksMappingInstance?.courseOffering}">
				<li class="fieldcontain">
					<span id="courseOffering-label" class="property-label"><g:message code="coMarksMapping.courseOffering.label" default="Course Offering" /></span>
					
						<span class="property-value" aria-labelledby="courseOffering-label"><g:link controller="courseOffering" action="show" id="${coMarksMappingInstance?.courseOffering?.id}">${coMarksMappingInstance?.courseOffering?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${coMarksMappingInstance?.employee}">
				<li class="fieldcontain">
					<span id="employee-label" class="property-label"><g:message code="coMarksMapping.employee.label" default="Employee" /></span>
					
						<span class="property-value" aria-labelledby="employee-label"><g:link controller="employee" action="show" id="${coMarksMappingInstance?.employee?.id}">${coMarksMappingInstance?.employee?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${coMarksMappingInstance?.percentage}">
				<li class="fieldcontain">
					<span id="percentage-label" class="property-label"><g:message code="coMarksMapping.percentage.label" default="Percentage" /></span>
					
						<span class="property-value" aria-labelledby="percentage-label"><g:fieldValue bean="${coMarksMappingInstance}" field="percentage"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:coMarksMappingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${coMarksMappingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
