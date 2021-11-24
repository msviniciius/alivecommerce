class CreatePhoneArquivos < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_arquivos do |t|
      t.string :mes
      t.string :ano
      t.string :file

      t.timestamps
    end
  end
end
