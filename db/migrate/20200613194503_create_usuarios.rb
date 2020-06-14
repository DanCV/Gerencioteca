class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.integer :cod_institucional
      t.string :profissao

      t.timestamps
    end
  end
end
