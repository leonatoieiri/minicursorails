class CreateAlunos < ActiveRecord::Migration[5.0]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.date :data_de_nascimento
      t.integer :turma_id
      t.integer :ano_id

      t.timestamps
    end
  end
end
