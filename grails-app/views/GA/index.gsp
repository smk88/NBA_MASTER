
<%@ page import="nba_vit.GA" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'GA.label', default: 'GA')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-GA" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-GA" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="gaStatement" title="${message(code: 'GA.gaStatement.label', default: 'Ga Statement')}" />
					
						<g:sortableColumn property="gaCode" title="${message(code: 'GA.gaCode.label', default: 'Ga Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${GAInstanceList}" status="i" var="GAInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${GAInstance.id}">${fieldValue(bean: GAInstance, field: "gaStatement")}</g:link></td>
					
						<td>${fieldValue(bean: GAInstance, field: "gaCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${GAInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
