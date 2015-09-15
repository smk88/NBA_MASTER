<%@ page import="nba_vit.TeacherCourse" %>



<div class="fieldcontain ${hasErrors(bean: teacherCourseInstance, field: 'courseOffering', 'error')} required">
	<label for="courseOffering">
		<g:message code="teacherCourse.courseOffering.label" default="Course Offering" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="courseOffering" name="courseOffering.id" from="${nba_vit.CourseOffering.list()}" optionKey="id" required="" value="${teacherCourseInstance?.courseOffering?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherCourseInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="teacherCourse.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${nba_vit.Employee.list()}" optionKey="id" required="" value="${teacherCourseInstance?.employee?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: teacherCourseInstance, field: 'teacherDivison', 'error')} ">
	<label for="teacherDivison">
		<g:message code="teacherCourse.teacherDivison.label" default="Teacher Divison" />
		
	</label>
	<g:textField name="teacherDivison" value="${teacherCourseInstance?.teacherDivison}"/>
</div>

