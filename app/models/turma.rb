class Turma < ApplicationRecord
	has_many :alunos

	def self.create_select
		Turma.all.map{ |t| [t.nome, t.id] }
	end
end
