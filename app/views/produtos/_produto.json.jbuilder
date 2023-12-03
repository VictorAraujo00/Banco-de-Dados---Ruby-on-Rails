json.extract! produto, :id, :serial, :nome, :descricao, :preco, :versao, :created_at, :updated_at
json.url produto_url(produto, format: :json)
