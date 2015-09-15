<%@ page import="nba_vit.CourseOutcome" %>



<div class="fieldcontain ${hasErrors(bean: courseOutcomeInstance, field: 'acadamicYear', 'error')} ">
	<label for="acadamicYear">
		<g:message code="courseOutcome.acadamicYear.label" default="Acadamic Year" />
		
	</label>
	<g:textField name="acadamicYear" value="${courseOutcomeInstance?.acadamicYear}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseOutcomeInstance, field: 'coCode', 'error')} ">
	<label for="coCode">
		<g:message code="courseOutcome.coCode.label" default="Co Code" />
		
	</label>
	<g:textField name="coCode" value="${courseOutcomeInstance?.coCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseOutcomeInstance, field: 'coStatement', 'error')} ">
	<label for="coStatement">
		<g:message code="courseOutcome.coStatement.label" default="Co Statement" />
		
	</label>
	<g:textField name="coStatement" value="${courseOutcomeInstance?.coStatement}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseOutcomeInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="courseOutcome.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${nba_vit.Course.list()}" optionKey="id" required="" value="${courseOutcomeInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseOutcomeInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="courseOutcome.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${nba_vit.Employee.list()}" optionKey="id" required="" value="${courseOutcomeInstance?.employee?.id}" class="many-to-one"/>
</div>

