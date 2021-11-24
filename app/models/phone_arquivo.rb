class PhoneArquivo < ApplicationRecord
  has_many :phones

  accepts_nested_attributes_for :phones, allow_destroy: true
  validates :mes, :ano, presence: true

  mount_uploader :file, CsvUploader
end
