
<%@ page import="nba_vit.PO" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'PO.label', default: 'PO')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-PO" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-PO" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="poStatement" title="${message(code: 'PO.poStatement.label', default: 'Po Statement')}" />
					
						<g:sortableColumn property="poCode" title="${message(code: 'PO.poCode.label', default: 'Po Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${POInstanceList}" status="i" var="POInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${POInstance.id}">${fieldValue(bean: POInstance, field: "poStatement")}</g:link></td>
					
						<td>${fieldValue(bean: POInstance, field: "poCode")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${POInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
