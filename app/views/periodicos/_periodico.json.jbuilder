json.extract! periodico, :id, :nome, :edicao, :descricao, :periocidade, :num_exemplares, :tempo_emprestimo, :created_at, :updated_at
json.url periodico_url(periodico, format: :json)
