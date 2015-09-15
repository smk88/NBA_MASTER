<%@ page import="nba_vit.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'grNumber', 'error')} ">
	<label for="grNumber">
		<g:message code="student.grNumber.label" default="Gr Number" />
		
	</label>
	<g:textField name="grNumber" value="${studentInstance?.grNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${studentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="student.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${studentInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'mobileNumber', 'error')} ">
	<label for="mobileNumber">
		<g:message code="student.mobileNumber.label" default="Mobile Number" />
		
	</label>
	<g:textField name="mobileNumber" value="${studentInstance?.mobileNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'currentYear', 'error')} ">
	<label for="currentYear">
		<g:message code="student.currentYear.label" default="Current Year" />
		
	</label>
	<g:textField name="currentYear" value="${studentInstance?.currentYear}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'academicYear', 'error')} ">
	<label for="academicYear">
		<g:message code="student.academicYear.label" default="Academic Year" />
		
	</label>
	<g:textField name="academicYear" value="${studentInstance?.academicYear}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'fyRollNo', 'error')} required">
	<label for="fyRollNo">
		<g:message code="student.fyRollNo.label" default="Fy Roll No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="fyRollNo" type="number" value="${studentInstance.fyRollNo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'syRollNo', 'error')} required">
	<label for="syRollNo">
		<g:message code="student.syRollNo.label" default="Sy Roll No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="syRollNo" type="number" value="${studentInstance.syRollNo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'tyRollNo', 'error')} required">
	<label for="tyRollNo">
		<g:message code="student.tyRollNo.label" default="Ty Roll No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tyRollNo" type="number" value="${studentInstance.tyRollNo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'btechRollNo', 'error')} required">
	<label for="btechRollNo">
		<g:message code="student.btechRollNo.label" default="Btech Roll No" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="btechRollNo" type="number" value="${studentInstance.btechRollNo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'fyDivision', 'error')} ">
	<label for="fyDivision">
		<g:message code="student.fyDivision.label" default="Fy Division" />
		
	</label>
	<g:textField name="fyDivision" value="${studentInstance?.fyDivision}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'syDivision', 'error')} ">
	<label for="syDivision">
		<g:message code="student.syDivision.label" default="Sy Division" />
		
	</label>
	<g:textField name="syDivision" value="${studentInstance?.syDivision}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'tyDivision', 'error')} ">
	<label for="tyDivision">
		<g:message code="student.tyDivision.label" default="Ty Division" />
		
	</label>
	<g:textField name="tyDivision" value="${studentInstance?.tyDivision}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'btechDivision', 'error')} ">
	<label for="btechDivision">
		<g:message code="student.btechDivision.label" default="Btech Division" />
		
	</label>
	<g:textField name="btechDivision" value="${studentInstance?.btechDivision}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'graduationStatus', 'error')} ">
	<label for="graduationStatus">
		<g:message code="student.graduationStatus.label" default="Graduation Status" />
		
	</label>
	<g:checkBox name="graduationStatus" value="${studentInstance?.graduationStatus}" />
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="student.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="department" name="department.id" from="${nba_vit.Department.list()}" optionKey="id" required="" value="${studentInstance?.department?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'program', 'error')} required">
	<label for="program">
		<g:message code="student.program.label" default="Program" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="program" name="program.id" from="${nba_vit.Program.list()}" optionKey="id" required="" value="${studentInstance?.program?.id}" class="many-to-one"/>
</div>

