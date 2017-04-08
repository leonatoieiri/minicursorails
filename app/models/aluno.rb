class Aluno < ApplicationRecord
	belongs_to :turma

	validate :max_alunos

	def max_alunos		
		if turma.alunos.size >= turma.limite_de_alunos
			errors.add(:alunos, "MUITOS") 
		end
	end
end
