class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.integer :cod_instituicional

      t.timestamps
    end
  end
end
