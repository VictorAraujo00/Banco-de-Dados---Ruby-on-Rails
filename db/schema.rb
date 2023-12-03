# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_12_03_192053) do
  create_table "clientes", force: :cascade do |t|
    t.string "cnpj"
    t.string "nome"
    t.string "endereco"
    t.string "telefone"
    t.string "email"
    t.integer "Produto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Produto_id"], name: "index_clientes_on_Produto_id"
  end

  create_table "desenvolvedores", force: :cascade do |t|
    t.string "cpf"
    t.string "nome"
    t.string "funcao"
    t.string "telefone"
    t.decimal "salario"
    t.string "endereco"
    t.integer "Produto_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Produto_id"], name: "index_desenvolvedores_on_Produto_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "serial"
    t.string "nome"
    t.string "descricao"
    t.decimal "preco"
    t.string "versao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clientes", "Produtos"
  add_foreign_key "desenvolvedores", "Produtos"
end
