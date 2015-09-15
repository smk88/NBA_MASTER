
<%@ page import="nba_vit.GA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'GA.label', default: 'GA')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-GA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-GA" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list GA">
			
				<g:if test="${GAInstance?.gaStatement}">
				<li class="fieldcontain">
					<span id="gaStatement-label" class="property-label"><g:message code="GA.gaStatement.label" default="Ga Statement" /></span>
					
						<span class="property-value" aria-labelledby="gaStatement-label"><g:fieldValue bean="${GAInstance}" field="gaStatement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${GAInstance?.gaCode}">
				<li class="fieldcontain">
					<span id="gaCode-label" class="property-label"><g:message code="GA.gaCode.label" default="Ga Code" /></span>
					
						<span class="property-value" aria-labelledby="gaCode-label"><g:fieldValue bean="${GAInstance}" field="gaCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:GAInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${GAInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
