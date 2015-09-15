<%@ page import="nba_vit.StudentCourse" %>



<div class="fieldcontain ${hasErrors(bean: studentCourseInstance, field: 'courseOffering', 'error')} required">
	<label for="courseOffering">
		<g:message code="studentCourse.courseOffering.label" default="Course Offering" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="courseOffering" name="courseOffering.id" from="${nba_vit.CourseOffering.list()}" optionKey="id" required="" value="${studentCourseInstance?.courseOffering?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentCourseInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="studentCourse.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${nba_vit.Student.list()}" optionKey="id" required="" value="${studentCourseInstance?.student?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentCourseInstance, field: 'studentDivision', 'error')} ">
	<label for="studentDivision">
		<g:message code="studentCourse.studentDivision.label" default="Student Division" />
		
	</label>
	<g:textField name="studentDivision" value="${studentCourseInstance?.studentDivision}"/>
</div>

