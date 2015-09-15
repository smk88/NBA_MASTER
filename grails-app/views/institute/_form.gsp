<%@ page import="nba_vit.Institute" %>



<div class="fieldcontain ${hasErrors(bean: instituteInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="institute.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${instituteInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instituteInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="institute.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${instituteInstance?.address}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instituteInstance, field: 'establishmentDate', 'error')} required">
	<label for="establishmentDate">
		<g:message code="institute.establishmentDate.label" default="Establishment Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="establishmentDate" precision="day"  value="${instituteInstance?.establishmentDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: instituteInstance, field: 'vision', 'error')} ">
	<label for="vision">
		<g:message code="institute.vision.label" default="Vision" />
		
	</label>
	<g:textField name="vision" value="${instituteInstance?.vision}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instituteInstance, field: 'mission', 'error')} ">
	<label for="mission">
		<g:message code="institute.mission.label" default="Mission" />
		
	</label>
	<g:textField name="mission" value="${instituteInstance?.mission}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instituteInstance, field: 'vmCreatedDate', 'error')} required">
	<label for="vmCreatedDate">
		<g:message code="institute.vmCreatedDate.label" default="Vm Created Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="vmCreatedDate" precision="day"  value="${instituteInstance?.vmCreatedDate}"  />
</div>

