
<%@ page import="nba_vit.PEO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'PEO.label', default: 'PEO')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-PEO" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-PEO" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="peoStatement" title="${message(code: 'PEO.peoStatement.label', default: 'Peo Statement')}" />
					
						<g:sortableColumn property="peoCode" title="${message(code: 'PEO.peoCode.label', default: 'Peo Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${PEOInstanceList}" status="i" var="PEOInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${PEOInstance.id}">${fieldValue(bean: PEOInstance, field: "peoStatement")}</g:link></td>
					
						<td>${fieldValue(bean: PEOInstance, field: "peoCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${PEOInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
