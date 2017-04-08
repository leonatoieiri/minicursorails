class CreateTurmas < ActiveRecord::Migration[5.0]
  def change
    create_table :turmas do |t|
      t.string :nome
      t.integer :ano_id
      t.integer :limite_de_alunos

      t.timestamps
    end
  end
end
