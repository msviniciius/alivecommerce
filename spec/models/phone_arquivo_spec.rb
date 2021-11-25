require 'rails_helper'

RSpec.describe PhoneArquivo, type: :model do
  describe 'associações' do
    it { is_expected.to have_many(:phones).class_name('Phone') }
  end

  describe 'validações' do
    it 'é válido com atributos válidos' do
      phone_arquivo = build(:phone_arquivo)
      expect(phone_arquivo).to be_valid
    end
    it 'é inválido sem ano' do
      is_expected.to validate_presence_of(:ano)
    end
    it 'é inválido sem mes' do
      is_expected.to validate_presence_of(:mes)
    end
    
    context 'ao importar do arquivo de envio' do
      it 'é inválido se tipo :file diferente de csv' do
        phone_arquivo = build(:phone_arquivo)
        phone_arquivo.valid?
        expect(phone_arquivo.errors[:build_from_csv]).to_not eq('deve ser no formato csv ou txt')
      end
    end
  end
end
