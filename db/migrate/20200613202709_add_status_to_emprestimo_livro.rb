class AddStatusToEmprestimoLivro < ActiveRecord::Migration[6.0]
  def change
    add_column :emprestimo_livros, :status, :string
  end
end
