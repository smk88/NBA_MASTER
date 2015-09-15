<%@ page import="nba_vit.PEO" %>



<div class="fieldcontain ${hasErrors(bean: PEOInstance, field: 'peoStatement', 'error')} ">
	<label for="peoStatement">
		<g:message code="PEO.peoStatement.label" default="Peo Statement" />
		
	</label>
	<g:textField name="peoStatement" value="${PEOInstance?.peoStatement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: PEOInstance, field: 'peoCode', 'error')} ">
	<label for="peoCode">
		<g:message code="PEO.peoCode.label" default="Peo Code" />
		
	</label>
	<g:textField name="peoCode" value="${PEOInstance?.peoCode}"/>
</div>

