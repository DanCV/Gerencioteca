class CreatePeriodicos < ActiveRecord::Migration[6.0]
  def change
    create_table :periodicos do |t|
      t.string :nome
      t.integer :edicao
      t.text :descricao
      t.integer :periocidade
      t.integer :num_exemplares
      t.integer :tempo_emprestimo

      t.timestamps
    end
  end
end
