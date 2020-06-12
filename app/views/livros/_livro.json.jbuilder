json.extract! livro, :id, :nome, :autor, :editora, :edicao, :descricao, :num_exemplares, :tempo_emprestimo, :created_at, :updated_at
json.url livro_url(livro, format: :json)
