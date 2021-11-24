class RemovePhoneArquivoFromPhones < ActiveRecord::Migration[5.2]
  def change
    remove_reference :phones, :phone_arquivos, foreign_key: true
  end
end
