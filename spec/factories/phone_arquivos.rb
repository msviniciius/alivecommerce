FactoryBot.define do
  factory :phone_arquivo do
    ano { '2021' }
    mes { '04' }
    file { nil }

    trait :file do
      file { build_from_csv("#{Rails.root}/spec/support/assets/phones.csv", 'text/csv') }
    end

    trait :com_file_envio_invalido do
      arquivo_envio { build_from_csv("#{Rails.root}/spec/support/assets/teste.xlsx", 'application/excel') }
    end
  end
end
