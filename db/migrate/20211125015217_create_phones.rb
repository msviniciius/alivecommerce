class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.string :model
      t.string :brand
      t.string :manufacturer
      t.string :chip_type
      t.string :so_version
      t.string :screen_type
      t.string :display_size
      t.string :resolution
      t.string :back_cam
      t.string :front_cam
      t.string :ram
      t.string :processor
      t.string :memory_int
      t.string :color
      t.string :modaly
      t.integer :quantity
      t.decimal :price
      t.references :phone_arquivo, foreign_key: true

      t.timestamps
    end
  end
end
