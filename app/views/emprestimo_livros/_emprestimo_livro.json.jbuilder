json.extract! emprestimo_livro, :id, :usuario_id, :livro_id, :dia, :devolucao, :created_at, :updated_at
json.url emprestimo_livro_url(emprestimo_livro, format: :json)
