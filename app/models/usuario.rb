class Usuario < ApplicationRecord

validates_presence_of :nome, message: 'deve ser preenchido'
validates_length_of :nome, maximum: 100, message: 'deve ter até 100 caracteres'
validates_presence_of :cod_institucional, message: 'deve ser preenchido'
validates_length_of :cod_institucional, is: 9, message: 'O campo Codigo Instituicional deve conter 9 dígitos'
validates_uniqueness_of :cod_institucional, message: 'Esse Codigo já está cadastrado'
validates_numericality_of :cod_institucional, message: 'Somente Numeros',:only_integer => true
validates_presence_of :profissao, message: 'deve ser preenchido'
validates_length_of :profissao, maximum: 20, message: 'deve ter até 20 caracteres'

end
