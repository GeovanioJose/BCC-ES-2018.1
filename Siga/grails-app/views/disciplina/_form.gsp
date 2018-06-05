<%@ page import="siga.Disciplina" %>



<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="disciplina.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="20" required="" value="${disciplinaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'ementa', 'error')} required">
	<label for="ementa">
		<g:message code="disciplina.ementa.label" default="Ementa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ementa" required="" value="${disciplinaInstance?.ementa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'periodo', 'error')} required">
	<label for="periodo">
		<g:message code="disciplina.periodo.label" default="Periodo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="periodo" from="${disciplinaInstance.constraints.periodo.inList}" required="" value="${disciplinaInstance?.periodo}" valueMessagePrefix="disciplina.periodo"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'alunos', 'error')} ">
	<label for="alunos">
		<g:message code="disciplina.alunos.label" default="Alunos" />
		
	</label>
	

</div>

