<%@ page import="nba_vit.PO" %>



<div class="fieldcontain ${hasErrors(bean: POInstance, field: 'poStatement', 'error')} ">
	<label for="poStatement">
		<g:message code="PO.poStatement.label" default="Po Statement" />
		
	</label>
	<g:textField name="poStatement" value="${POInstance?.poStatement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: POInstance, field: 'poCode', 'error')} ">
	<label for="poCode">
		<g:message code="PO.poCode.label" default="Po Code" />
		
	</label>
	<g:textField name="poCode" value="${POInstance?.poCode}"/>
</div>

