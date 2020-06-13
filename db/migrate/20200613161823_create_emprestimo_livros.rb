class CreateEmprestimoLivros < ActiveRecord::Migration[6.0]
  def change
    create_table :emprestimo_livros do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :livro, null: false, foreign_key: true
      t.date :dia
      t.date :devolucao

      t.timestamps
    end
  end
end
