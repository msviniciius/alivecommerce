json.extract! phone, :id, :model, :brand, :manufacturer, :chip_type, :so_version, :screen_type, :display_size, :resolution, :back_cam, :front_cam, :ram, :processor, :memory_int, :color, :modaly, :quantity, :price, :phone_arquivo_id, :created_at, :updated_at
json.url phone_url(phone, format: :json)
