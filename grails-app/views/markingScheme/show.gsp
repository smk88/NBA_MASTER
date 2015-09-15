
<%@ page import="nba_vit.MarkingScheme" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'markingScheme.label', default: 'MarkingScheme')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-markingScheme" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-markingScheme" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list markingScheme">
			
				<g:if test="${markingSchemeInstance?.courseType}">
				<li class="fieldcontain">
					<span id="courseType-label" class="property-label"><g:message code="markingScheme.courseType.label" default="Course Type" /></span>
					
						<span class="property-value" aria-labelledby="courseType-label"><g:link controller="courseType" action="show" id="${markingSchemeInstance?.courseType?.id}">${markingSchemeInstance?.courseType?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${markingSchemeInstance?.endSEmesterExam}">
				<li class="fieldcontain">
					<span id="endSEmesterExam-label" class="property-label"><g:message code="markingScheme.endSEmesterExam.label" default="End SE mester Exam" /></span>
					
						<span class="property-value" aria-labelledby="endSEmesterExam-label"><g:fieldValue bean="${markingSchemeInstance}" field="endSEmesterExam"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markingSchemeInstance?.homeworkAssignment}">
				<li class="fieldcontain">
					<span id="homeworkAssignment-label" class="property-label"><g:message code="markingScheme.homeworkAssignment.label" default="Homework Assignment" /></span>
					
						<span class="property-value" aria-labelledby="homeworkAssignment-label"><g:fieldValue bean="${markingSchemeInstance}" field="homeworkAssignment"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markingSchemeInstance?.laboratry}">
				<li class="fieldcontain">
					<span id="laboratry-label" class="property-label"><g:message code="markingScheme.laboratry.label" default="Laboratry" /></span>
					
						<span class="property-value" aria-labelledby="laboratry-label"><g:fieldValue bean="${markingSchemeInstance}" field="laboratry"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markingSchemeInstance?.reviewFile}">
				<li class="fieldcontain">
					<span id="reviewFile-label" class="property-label"><g:message code="markingScheme.reviewFile.label" default="Review File" /></span>
					
						<span class="property-value" aria-labelledby="reviewFile-label"><g:fieldValue bean="${markingSchemeInstance}" field="reviewFile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markingSchemeInstance?.reviewFour}">
				<li class="fieldcontain">
					<span id="reviewFour-label" class="property-label"><g:message code="markingScheme.reviewFour.label" default="Review Four" /></span>
					
						<span class="property-value" aria-labelledby="reviewFour-label"><g:fieldValue bean="${markingSchemeInstance}" field="reviewFour"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markingSchemeInstance?.reviewOne}">
				<li class="fieldcontain">
					<span id="reviewOne-label" class="property-label"><g:message code="markingScheme.reviewOne.label" default="Review One" /></span>
					
						<span class="property-value" aria-labelledby="reviewOne-label"><g:fieldValue bean="${markingSchemeInstance}" field="reviewOne"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markingSchemeInstance?.reviewThree}">
				<li class="fieldcontain">
					<span id="reviewThree-label" class="property-label"><g:message code="markingScheme.reviewThree.label" default="Review Three" /></span>
					
						<span class="property-value" aria-labelledby="reviewThree-label"><g:fieldValue bean="${markingSchemeInstance}" field="reviewThree"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markingSchemeInstance?.reviewTwo}">
				<li class="fieldcontain">
					<span id="reviewTwo-label" class="property-label"><g:message code="markingScheme.reviewTwo.label" default="Review Two" /></span>
					
						<span class="property-value" aria-labelledby="reviewTwo-label"><g:fieldValue bean="${markingSchemeInstance}" field="reviewTwo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markingSchemeInstance?.test1}">
				<li class="fieldcontain">
					<span id="test1-label" class="property-label"><g:message code="markingScheme.test1.label" default="Test1" /></span>
					
						<span class="property-value" aria-labelledby="test1-label"><g:fieldValue bean="${markingSchemeInstance}" field="test1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markingSchemeInstance?.test2}">
				<li class="fieldcontain">
					<span id="test2-label" class="property-label"><g:message code="markingScheme.test2.label" default="Test2" /></span>
					
						<span class="property-value" aria-labelledby="test2-label"><g:fieldValue bean="${markingSchemeInstance}" field="test2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${markingSchemeInstance?.tutorial}">
				<li class="fieldcontain">
					<span id="tutorial-label" class="property-label"><g:message code="markingScheme.tutorial.label" default="Tutorial" /></span>
					
						<span class="property-value" aria-labelledby="tutorial-label"><g:fieldValue bean="${markingSchemeInstance}" field="tutorial"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:markingSchemeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${markingSchemeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
