json.extract! phone_arquivo, :id, :mes, :ano, :file, :created_at, :updated_at
json.url phone_arquivo_url(phone_arquivo, format: :json)
