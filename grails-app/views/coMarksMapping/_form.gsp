<%@ page import="nba_vit.CoMarksMapping" %>



<div class="fieldcontain ${hasErrors(bean: coMarksMappingInstance, field: 'actualMarks', 'error')} required">
	<label for="actualMarks">
		<g:message code="coMarksMapping.actualMarks.label" default="Actual Marks" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="actualMarks" type="number" value="${coMarksMappingInstance.actualMarks}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: coMarksMappingInstance, field: 'assessmentMarks', 'error')} required">
	<label for="assessmentMarks">
		<g:message code="coMarksMapping.assessmentMarks.label" default="Assessment Marks" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="assessmentMarks" type="number" value="${coMarksMappingInstance.assessmentMarks}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: coMarksMappingInstance, field: 'assessmentType', 'error')} required">
	<label for="assessmentType">
		<g:message code="coMarksMapping.assessmentType.label" default="Assessment Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assessmentType" name="assessmentType.id" from="${nba_vit.AssessmentType.list()}" optionKey="id" required="" value="${coMarksMappingInstance?.assessmentType?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coMarksMappingInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="coMarksMapping.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${nba_vit.Course.list()}" optionKey="id" required="" value="${coMarksMappingInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coMarksMappingInstance, field: 'courseOffering', 'error')} required">
	<label for="courseOffering">
		<g:message code="coMarksMapping.courseOffering.label" default="Course Offering" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="courseOffering" name="courseOffering.id" from="${nba_vit.CourseOffering.list()}" optionKey="id" required="" value="${coMarksMappingInstance?.courseOffering?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coMarksMappingInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="coMarksMapping.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${nba_vit.Employee.list()}" optionKey="id" required="" value="${coMarksMappingInstance?.employee?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: coMarksMappingInstance, field: 'percentage', 'error')} required">
	<label for="percentage">
		<g:message code="coMarksMapping.percentage.label" default="Percentage" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="percentage" type="number" value="${coMarksMappingInstance.percentage}" required=""/>
</div>

