
<%@ page import="nba_vit.PEO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'PEO.label', default: 'PEO')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-PEO" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-PEO" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list PEO">
			
				<g:if test="${PEOInstance?.peoStatement}">
				<li class="fieldcontain">
					<span id="peoStatement-label" class="property-label"><g:message code="PEO.peoStatement.label" default="Peo Statement" /></span>
					
						<span class="property-value" aria-labelledby="peoStatement-label"><g:fieldValue bean="${PEOInstance}" field="peoStatement"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${PEOInstance?.peoCode}">
				<li class="fieldcontain">
					<span id="peoCode-label" class="property-label"><g:message code="PEO.peoCode.label" default="Peo Code" /></span>
					
						<span class="property-value" aria-labelledby="peoCode-label"><g:fieldValue bean="${PEOInstance}" field="peoCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:PEOInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${PEOInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
