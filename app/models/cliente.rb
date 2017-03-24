class Cliente < ActiveRecord::Base

  has_many :qualificacoes

  validates_presence_of  :nome, message:  " - Deve ser preenchido"
  validates_uniqueness_of :nome, message: " - Nome já cadastrado"
  validates_numericality_of :idade, greater_than: 10, less_than: 100, message: " - deve ser um numero entre 10 e 100"
end
