class AddStatusToLivro < ActiveRecord::Migration[6.0]
  def change
    add_column :livros, :status, :string
  end
end
