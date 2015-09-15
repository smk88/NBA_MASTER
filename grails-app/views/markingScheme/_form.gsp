<%@ page import="nba_vit.MarkingScheme" %>



<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'courseType', 'error')} required">
	<label for="courseType">
		<g:message code="markingScheme.courseType.label" default="Course Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="courseType" name="courseType.id" from="${nba_vit.CourseType.list()}" optionKey="id" required="" value="${markingSchemeInstance?.courseType?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'endSEmesterExam', 'error')} required">
	<label for="endSEmesterExam">
		<g:message code="markingScheme.endSEmesterExam.label" default="End SE mester Exam" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="endSEmesterExam" type="number" value="${markingSchemeInstance.endSEmesterExam}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'homeworkAssignment', 'error')} required">
	<label for="homeworkAssignment">
		<g:message code="markingScheme.homeworkAssignment.label" default="Homework Assignment" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="homeworkAssignment" type="number" value="${markingSchemeInstance.homeworkAssignment}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'laboratry', 'error')} required">
	<label for="laboratry">
		<g:message code="markingScheme.laboratry.label" default="Laboratry" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="laboratry" type="number" value="${markingSchemeInstance.laboratry}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'reviewFile', 'error')} required">
	<label for="reviewFile">
		<g:message code="markingScheme.reviewFile.label" default="Review File" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reviewFile" type="number" value="${markingSchemeInstance.reviewFile}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'reviewFour', 'error')} required">
	<label for="reviewFour">
		<g:message code="markingScheme.reviewFour.label" default="Review Four" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reviewFour" type="number" value="${markingSchemeInstance.reviewFour}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'reviewOne', 'error')} required">
	<label for="reviewOne">
		<g:message code="markingScheme.reviewOne.label" default="Review One" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reviewOne" type="number" value="${markingSchemeInstance.reviewOne}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'reviewThree', 'error')} required">
	<label for="reviewThree">
		<g:message code="markingScheme.reviewThree.label" default="Review Three" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reviewThree" type="number" value="${markingSchemeInstance.reviewThree}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'reviewTwo', 'error')} required">
	<label for="reviewTwo">
		<g:message code="markingScheme.reviewTwo.label" default="Review Two" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="reviewTwo" type="number" value="${markingSchemeInstance.reviewTwo}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'test1', 'error')} required">
	<label for="test1">
		<g:message code="markingScheme.test1.label" default="Test1" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="test1" type="number" value="${markingSchemeInstance.test1}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'test2', 'error')} required">
	<label for="test2">
		<g:message code="markingScheme.test2.label" default="Test2" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="test2" type="number" value="${markingSchemeInstance.test2}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: markingSchemeInstance, field: 'tutorial', 'error')} required">
	<label for="tutorial">
		<g:message code="markingScheme.tutorial.label" default="Tutorial" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tutorial" type="number" value="${markingSchemeInstance.tutorial}" required=""/>
</div>

