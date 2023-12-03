class CreateDesenvolvedores < ActiveRecord::Migration[7.1]
  def change
    create_table :desenvolvedores do |t|
      t.string :cpf
      t.string :nome
      t.string :funcao
      t.string :telefone
      t.decimal :salario
      t.string :endereco
      t.references :Produto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
