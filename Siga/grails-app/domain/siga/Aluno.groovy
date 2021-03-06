package siga

class Aluno {
	String nome
	Date dataNascimento
	String email
	String telefone
	String matricula
	
	static hasMany = [disciplinas:Disciplina]
	static belongsTo = [Disciplina]
	
    static constraints = {
		nome size:3..30, blank: false
		dataNascimento max: new Date(), blank: false
		email email:true, unique:true, blank: false
		telefone size: 8..12, blank: false
		matricula size:6..11, unique:true, blank: false
    }
    @Override
    public String toString() {
	return "[" + nome + "]";
    }
}
