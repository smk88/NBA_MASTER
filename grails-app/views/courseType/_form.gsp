<%@ page import="nba_vit.CourseType" %>



<div class="fieldcontain ${hasErrors(bean: courseTypeInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="courseType.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${courseTypeInstance?.type}"/>
</div>

