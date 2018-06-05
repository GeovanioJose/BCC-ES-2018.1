<%@ page import="siga.Aluno" %>



<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="aluno.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="30" required="" value="${alunoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="aluno.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${alunoInstance?.dataNascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="aluno.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${alunoInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="aluno.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" maxlength="12" required="" value="${alunoInstance?.telefone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'matricula', 'error')} required">
	<label for="matricula">
		<g:message code="aluno.matricula.label" default="Matricula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="matricula" maxlength="11" required="" value="${alunoInstance?.matricula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'disciplinas', 'error')} ">
	<label for="disciplinas">
		<g:message code="aluno.disciplinas.label" default="Disciplinas" />
		
	</label>
	<g:select name="disciplinas" from="${siga.Disciplina.list()}" multiple="multiple" optionKey="id" size="5" value="${alunoInstance?.disciplinas*.id}" class="many-to-many"/>

</div>

