
<%@ page import="nba_vit.CourseOffering" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'courseOffering.label', default: 'CourseOffering')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-courseOffering" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-courseOffering" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list courseOffering">
			
				<g:if test="${courseOfferingInstance?.acadamicYear}">
				<li class="fieldcontain">
					<span id="acadamicYear-label" class="property-label"><g:message code="courseOffering.acadamicYear.label" default="Acadamic Year" /></span>
					
						<span class="property-value" aria-labelledby="acadamicYear-label"><g:fieldValue bean="${courseOfferingInstance}" field="acadamicYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseOfferingInstance?.course}">
				<li class="fieldcontain">
					<span id="course-label" class="property-label"><g:message code="courseOffering.course.label" default="Course" /></span>
					
						<span class="property-value" aria-labelledby="course-label"><g:link controller="course" action="show" id="${courseOfferingInstance?.course?.id}">${courseOfferingInstance?.course?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseOfferingInstance?.module}">
				<li class="fieldcontain">
					<span id="module-label" class="property-label"><g:message code="courseOffering.module.label" default="Module" /></span>
					
						<span class="property-value" aria-labelledby="module-label"><g:fieldValue bean="${courseOfferingInstance}" field="module"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseOfferingInstance?.semester}">
				<li class="fieldcontain">
					<span id="semester-label" class="property-label"><g:message code="courseOffering.semester.label" default="Semester" /></span>
					
						<span class="property-value" aria-labelledby="semester-label"><g:fieldValue bean="${courseOfferingInstance}" field="semester"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${courseOfferingInstance?.year}">
				<li class="fieldcontain">
					<span id="year-label" class="property-label"><g:message code="courseOffering.year.label" default="Year" /></span>
					
						<span class="property-value" aria-labelledby="year-label"><g:fieldValue bean="${courseOfferingInstance}" field="year"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:courseOfferingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${courseOfferingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
