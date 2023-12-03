json.extract! cliente, :id, :cnpj, :nome, :endereco, :telefone, :email, :Produto_id, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
