<%@ page import="nba_vit.StudentMarks" %>



<div class="fieldcontain ${hasErrors(bean: studentMarksInstance, field: 'actualMarks', 'error')} required">
	<label for="actualMarks">
		<g:message code="studentMarks.actualMarks.label" default="Actual Marks" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="actualMarks" type="number" value="${studentMarksInstance.actualMarks}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentMarksInstance, field: 'assessmentMarks', 'error')} required">
	<label for="assessmentMarks">
		<g:message code="studentMarks.assessmentMarks.label" default="Assessment Marks" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="assessmentMarks" type="number" value="${studentMarksInstance.assessmentMarks}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentMarksInstance, field: 'assessmentType', 'error')} required">
	<label for="assessmentType">
		<g:message code="studentMarks.assessmentType.label" default="Assessment Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="assessmentType" name="assessmentType.id" from="${nba_vit.AssessmentType.list()}" optionKey="id" required="" value="${studentMarksInstance?.assessmentType?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentMarksInstance, field: 'courseOffering', 'error')} required">
	<label for="courseOffering">
		<g:message code="studentMarks.courseOffering.label" default="Course Offering" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="courseOffering" name="courseOffering.id" from="${nba_vit.CourseOffering.list()}" optionKey="id" required="" value="${studentMarksInstance?.courseOffering?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentMarksInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="studentMarks.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${nba_vit.Student.list()}" optionKey="id" required="" value="${studentMarksInstance?.student?.id}" class="many-to-one"/>
</div>

