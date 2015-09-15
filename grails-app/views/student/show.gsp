
<%@ page import="nba_vit.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-student" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list student">
			
				<g:if test="${studentInstance?.grNumber}">
				<li class="fieldcontain">
					<span id="grNumber-label" class="property-label"><g:message code="student.grNumber.label" default="Gr Number" /></span>
					
						<span class="property-value" aria-labelledby="grNumber-label"><g:fieldValue bean="${studentInstance}" field="grNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="student.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${studentInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="student.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${studentInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="student.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${studentInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.currentYear}">
				<li class="fieldcontain">
					<span id="currentYear-label" class="property-label"><g:message code="student.currentYear.label" default="Current Year" /></span>
					
						<span class="property-value" aria-labelledby="currentYear-label"><g:fieldValue bean="${studentInstance}" field="currentYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.academicYear}">
				<li class="fieldcontain">
					<span id="academicYear-label" class="property-label"><g:message code="student.academicYear.label" default="Academic Year" /></span>
					
						<span class="property-value" aria-labelledby="academicYear-label"><g:fieldValue bean="${studentInstance}" field="academicYear"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.fyRollNo}">
				<li class="fieldcontain">
					<span id="fyRollNo-label" class="property-label"><g:message code="student.fyRollNo.label" default="Fy Roll No" /></span>
					
						<span class="property-value" aria-labelledby="fyRollNo-label"><g:fieldValue bean="${studentInstance}" field="fyRollNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.syRollNo}">
				<li class="fieldcontain">
					<span id="syRollNo-label" class="property-label"><g:message code="student.syRollNo.label" default="Sy Roll No" /></span>
					
						<span class="property-value" aria-labelledby="syRollNo-label"><g:fieldValue bean="${studentInstance}" field="syRollNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.tyRollNo}">
				<li class="fieldcontain">
					<span id="tyRollNo-label" class="property-label"><g:message code="student.tyRollNo.label" default="Ty Roll No" /></span>
					
						<span class="property-value" aria-labelledby="tyRollNo-label"><g:fieldValue bean="${studentInstance}" field="tyRollNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.btechRollNo}">
				<li class="fieldcontain">
					<span id="btechRollNo-label" class="property-label"><g:message code="student.btechRollNo.label" default="Btech Roll No" /></span>
					
						<span class="property-value" aria-labelledby="btechRollNo-label"><g:fieldValue bean="${studentInstance}" field="btechRollNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.fyDivision}">
				<li class="fieldcontain">
					<span id="fyDivision-label" class="property-label"><g:message code="student.fyDivision.label" default="Fy Division" /></span>
					
						<span class="property-value" aria-labelledby="fyDivision-label"><g:fieldValue bean="${studentInstance}" field="fyDivision"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.syDivision}">
				<li class="fieldcontain">
					<span id="syDivision-label" class="property-label"><g:message code="student.syDivision.label" default="Sy Division" /></span>
					
						<span class="property-value" aria-labelledby="syDivision-label"><g:fieldValue bean="${studentInstance}" field="syDivision"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.tyDivision}">
				<li class="fieldcontain">
					<span id="tyDivision-label" class="property-label"><g:message code="student.tyDivision.label" default="Ty Division" /></span>
					
						<span class="property-value" aria-labelledby="tyDivision-label"><g:fieldValue bean="${studentInstance}" field="tyDivision"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.btechDivision}">
				<li class="fieldcontain">
					<span id="btechDivision-label" class="property-label"><g:message code="student.btechDivision.label" default="Btech Division" /></span>
					
						<span class="property-value" aria-labelledby="btechDivision-label"><g:fieldValue bean="${studentInstance}" field="btechDivision"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.graduationStatus}">
				<li class="fieldcontain">
					<span id="graduationStatus-label" class="property-label"><g:message code="student.graduationStatus.label" default="Graduation Status" /></span>
					
						<span class="property-value" aria-labelledby="graduationStatus-label"><g:formatBoolean boolean="${studentInstance?.graduationStatus}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.department}">
				<li class="fieldcontain">
					<span id="department-label" class="property-label"><g:message code="student.department.label" default="Department" /></span>
					
						<span class="property-value" aria-labelledby="department-label"><g:link controller="department" action="show" id="${studentInstance?.department?.id}">${studentInstance?.department?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${studentInstance?.program}">
				<li class="fieldcontain">
					<span id="program-label" class="property-label"><g:message code="student.program.label" default="Program" /></span>
					
						<span class="property-value" aria-labelledby="program-label"><g:link controller="program" action="show" id="${studentInstance?.program?.id}">${studentInstance?.program?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:studentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${studentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
