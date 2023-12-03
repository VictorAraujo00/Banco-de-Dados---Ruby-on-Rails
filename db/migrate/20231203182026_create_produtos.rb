class CreateProdutos < ActiveRecord::Migration[7.1]
  def change
    create_table :produtos do |t|
      t.string :serial
      t.string :nome
      t.string :descricao
      t.decimal :preco
      t.string :versao

      t.timestamps
    end
  end
end
