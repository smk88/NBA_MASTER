<%@ page import="nba_vit.AssessmentType" %>



<div class="fieldcontain ${hasErrors(bean: assessmentTypeInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="assessmentType.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${assessmentTypeInstance?.type}"/>
</div>

