require 'rails_helper'

RSpec.describe "phone_arquivos/new", type: :view do
  before(:each) do
    assign(:phone_arquivo, PhoneArquivo.new(
      :mes => "MyString",
      :ano => "MyString",
      :file => "MyString"
    ))
  end

  it "renders new phone_arquivo form" do
    render

    assert_select "form[action=?][method=?]", phone_arquivos_path, "post" do

      assert_select "input[name=?]", "phone_arquivo[mes]"

      assert_select "input[name=?]", "phone_arquivo[ano]"

      assert_select "input[name=?]", "phone_arquivo[file]"
    end
  end
end
