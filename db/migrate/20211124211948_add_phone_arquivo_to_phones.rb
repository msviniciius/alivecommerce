class AddPhoneArquivoToPhones < ActiveRecord::Migration[5.2]
  def change
    add_reference :phones, :phone_arquivo, foreign_key: true
  end
end
