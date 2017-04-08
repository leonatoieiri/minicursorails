json.extract! aluno, :id, :nome, :data_de_nascimento, :turma_id, :ano_id, :created_at, :updated_at
json.url aluno_url(aluno, format: :json)
