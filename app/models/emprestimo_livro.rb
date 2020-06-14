class EmprestimoLivro < ApplicationRecord
  belongs_to :usuario
  belongs_to :livro
  
 validates_uniqueness_of :usuario, conditions: -> { where(status: 'ABERTA') },message: 'Emprestimo pendente'
end
