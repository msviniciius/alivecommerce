class PhoneArquivo < ApplicationRecord
  has_many :phones, dependent: :destroy

  accepts_nested_attributes_for :phones, allow_destroy: true
  validates :mes, :ano, presence: true
end
