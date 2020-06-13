class Usuario < ApplicationRecord

    validates_presence_of :nome, message: 'deve ser preenchido'
    validates_length_of :nome, maximum: 100, message: 'deve ter até 100 caracteres'
    validates_presence_of :cod_instituicional, message: 'deve ser preenchido'
    validates_length_of :cod_instituicional, is: 9, message: 'O campo Codigo Instituicional deve conter 9 dígitos'
    validates_uniqueness_of :cod_instituicional, message: 'Esse Codigo já está cadastrado'
    validates_numericality_of :cod_instituicional, message: 'Somente Numeros',:only_integer => true


    

end
