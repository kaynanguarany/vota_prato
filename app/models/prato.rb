class Prato < ActiveRecord::Base

  has_and_belongs_to_many :restaurante
  has_one :receita

  validate :validate_presence_of_more_than_one_restaurante

  validates_presence_of :nome, message: " - deve ser preenchido"
  validates_uniqueness_of :nome, message: " - nome já cadastrado"

  private
  def validate_presence_of_more_than_one_restaurante
    errors.add("restaurantes", "deve haver ao menos um restaurante") if restaurante.empty?
  end
end
