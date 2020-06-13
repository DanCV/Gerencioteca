class Livro < ApplicationRecord

validates_presence_of :nome, message: 'deve ser preenchido'
validates_length_of :nome, maximum: 100, message: 'deve ter até 100 caracteres'
validates_presence_of :autor, message: 'deve ser preenchido'
validates_length_of :autor, maximum: 100, message: 'deve ter até 100 caracteres'
validates_presence_of :editora, message: 'deve ser preenchido'
validates_length_of :editora, maximum: 100, message: 'deve ter até 100 caracteres'
validates_presence_of :edicao, message: 'deve ser preenchido'
validates_numericality_of :edicao, message: 'Somente Numeros', :only_integer => true
validates_presence_of :descricao, message: 'deve ser preenchido'
validates_length_of :descricao, maximum: 255, message: 'deve ter até 255 caracteres'
validates_presence_of :num_exemplares, message: 'deve ser preenchido'
validates_numericality_of :num_exemplares, message: 'Somente Numeros',:only_integer => true
validates_presence_of :tempo_emprestimo, message: 'deve ser preenchido'
validates_numericality_of :tempo_emprestimo, message: 'Somente Numeros',:only_integer => true

end
