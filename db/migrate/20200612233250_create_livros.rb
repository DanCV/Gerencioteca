class CreateLivros < ActiveRecord::Migration[6.0]
  def change
    create_table :livros do |t|
      t.string :nome
      t.string :autor
      t.string :editora
      t.integer :edicao
      t.text :descricao
      t.integer :num_exemplares
      t.integer :tempo_emprestimo

      t.timestamps
    end
  end
end
