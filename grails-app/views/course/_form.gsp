<%@ page import="nba_vit.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseCode', 'error')} ">
	<label for="courseCode">
		<g:message code="course.courseCode.label" default="Course Code" />
		
	</label>
	<g:textField name="courseCode" value="${courseInstance?.courseCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseCredit', 'error')} required">
	<label for="courseCredit">
		<g:message code="course.courseCredit.label" default="Course Credit" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="courseCredit" type="number" value="${courseInstance.courseCredit}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseName', 'error')} ">
	<label for="courseName">
		<g:message code="course.courseName.label" default="Course Name" />
		
	</label>
	<g:textField name="courseName" value="${courseInstance?.courseName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courseType', 'error')} required">
	<label for="courseType">
		<g:message code="course.courseType.label" default="Course Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="courseType" name="courseType.id" from="${nba_vit.CourseType.list()}" optionKey="id" required="" value="${courseInstance?.courseType?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'coursetype', 'error')} required">
	<label for="coursetype">
		<g:message code="course.coursetype.label" default="Coursetype" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="coursetype" name="coursetype.id" from="${nba_vit.CourseType.list()}" optionKey="id" required="" value="${courseInstance?.coursetype?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'employee', 'error')} required">
	<label for="employee">
		<g:message code="course.employee.label" default="Employee" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="employee" name="employee.id" from="${nba_vit.Employee.list()}" optionKey="id" required="" value="${courseInstance?.employee?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'module', 'error')} required">
	<label for="module">
		<g:message code="course.module.label" default="Module" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="module" type="number" value="${courseInstance.module}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'semester', 'error')} required">
	<label for="semester">
		<g:message code="course.semester.label" default="Semester" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="semester" type="number" value="${courseInstance.semester}" required=""/>
</div>

