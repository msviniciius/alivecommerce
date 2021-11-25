class PhoneArquivo < ApplicationRecord
  has_many :phones, dependent: :destroy

  accepts_nested_attributes_for :phones, allow_destroy: true
  validates :mes, :ano, presence: true

  mount_uploader :file, CsvUploader

  def build_from_csv
    require 'csv'

    self.mes = 13
    url = file.path
    csv = Roo::CSV.new(url, csv_options: {encoding: Encoding::ISO_8859_1})
    csv.default_sheet = csv.sheets[0]
    csv.each do |row|
      phones.build(
        model: row[0],
        brand: row[1],
        manufacturer: row[2],
        chip_type: row[3],
        so_version: row[4],
        screen_type: row[5],
        display_size: row[6],
        resolution: row[7],
        back_cam: row[8],
        front_cam: row[9],
        ram: row[10],
        processor: row[11],
        memory_int: row[12],
        color: row[13],
        modaly: row[14],
        quantity: row[15],
        price: row[16]
      )
    end
  end
end
