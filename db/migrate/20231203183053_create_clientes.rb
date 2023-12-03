class CreateClientes < ActiveRecord::Migration[7.1]
  def change
    create_table :clientes do |t|
      t.string :cnpj
      t.string :nome
      t.string :endereco
      t.string :telefone
      t.string :email
      t.references :Produto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
