class PhoneArquivosController < ApplicationController
  before_action :set_phone_arquivo, only: %i[ show edit update destroy ]

  # GET /phone_arquivos or /phone_arquivos.json
  def index
    @phone_arquivos = PhoneArquivo.all
  end

  # GET /phone_arquivos/1 or /phone_arquivos/1.json
  def show
  end

  # GET /phone_arquivos/new
  def new
    @phone_arquivo = PhoneArquivo.new
  end

  # GET /phone_arquivos/1/edit
  def edit
  end

  # POST /phone_arquivos or /phone_arquivos.json
  def create
    @phone_arquivo = PhoneArquivo.new(phone_arquivo_params)

    respond_to do |format|
      if @phone_arquivo.save
        format.html { redirect_to @phone_arquivo, notice: "Phone arquivo was successfully created." }
        format.json { render :show, status: :created, location: @phone_arquivo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @phone_arquivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_arquivos/1 or /phone_arquivos/1.json
  def update
    respond_to do |format|
      if @phone_arquivo.update(phone_arquivo_params)
        format.html { redirect_to @phone_arquivo, notice: "Phone arquivo was successfully updated." }
        format.json { render :show, status: :ok, location: @phone_arquivo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phone_arquivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_arquivos/1 or /phone_arquivos/1.json
  def destroy
    @phone_arquivo.destroy
    respond_to do |format|
      format.html { redirect_to phone_arquivos_url, notice: "Phone arquivo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_arquivo
      @phone_arquivo = PhoneArquivo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def phone_arquivo_params
      params.require(:phone_arquivo).permit(:mes, :ano, :file)
    end
end
