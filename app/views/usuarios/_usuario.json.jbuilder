json.extract! usuario, :id, :nome, :cod_institucional, :profissao, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
