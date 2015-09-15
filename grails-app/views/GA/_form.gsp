<%@ page import="nba_vit.GA" %>



<div class="fieldcontain ${hasErrors(bean: GAInstance, field: 'gaStatement', 'error')} ">
	<label for="gaStatement">
		<g:message code="GA.gaStatement.label" default="Ga Statement" />
		
	</label>
	<g:textField name="gaStatement" value="${GAInstance?.gaStatement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: GAInstance, field: 'gaCode', 'error')} ">
	<label for="gaCode">
		<g:message code="GA.gaCode.label" default="Ga Code" />
		
	</label>
	<g:textField name="gaCode" value="${GAInstance?.gaCode}"/>
</div>

