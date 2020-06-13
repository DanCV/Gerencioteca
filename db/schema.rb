# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_13_161823) do

  create_table "emprestimo_livros", force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.integer "livro_id", null: false
    t.date "dia"
    t.date "devolucao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["livro_id"], name: "index_emprestimo_livros_on_livro_id"
    t.index ["usuario_id"], name: "index_emprestimo_livros_on_usuario_id"
  end

  create_table "livros", force: :cascade do |t|
    t.string "nome"
    t.string "autor"
    t.string "editora"
    t.integer "edicao"
    t.text "descricao"
    t.integer "num_exemplares"
    t.integer "tempo_emprestimo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "periodicos", force: :cascade do |t|
    t.string "nome"
    t.integer "edicao"
    t.text "descricao"
    t.integer "periocidade"
    t.integer "num_exemplares"
    t.integer "tempo_emprestimo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.integer "cod_instituicional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "emprestimo_livros", "livros"
  add_foreign_key "emprestimo_livros", "usuarios"
end
