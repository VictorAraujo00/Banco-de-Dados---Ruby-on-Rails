class DesenvolvedoresController < ApplicationController
  before_action :set_desenvolvedore, only: %i[ show edit update destroy ]

  # GET /desenvolvedores or /desenvolvedores.json
  def index
    @desenvolvedores = Desenvolvedore.all
  end

  # GET /desenvolvedores/1 or /desenvolvedores/1.json
  def show
  end

  # GET /desenvolvedores/new
  def new
    @desenvolvedore = Desenvolvedore.new
  end

  # GET /desenvolvedores/1/edit
  def edit
  end

  # POST /desenvolvedores or /desenvolvedores.json
  def create
    @desenvolvedore = Desenvolvedore.new(desenvolvedore_params)

    respond_to do |format|
      if @desenvolvedore.save
        format.html { redirect_to desenvolvedore_url(@desenvolvedore), notice: "Desenvolvedore was successfully created." }
        format.json { render :show, status: :created, location: @desenvolvedore }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @desenvolvedore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desenvolvedores/1 or /desenvolvedores/1.json
  def update
    respond_to do |format|
      if @desenvolvedore.update(desenvolvedore_params)
        format.html { redirect_to desenvolvedore_url(@desenvolvedore), notice: "Desenvolvedore was successfully updated." }
        format.json { render :show, status: :ok, location: @desenvolvedore }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @desenvolvedore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desenvolvedores/1 or /desenvolvedores/1.json
  def destroy
    @desenvolvedore.destroy!

    respond_to do |format|
      format.html { redirect_to desenvolvedores_url, notice: "Desenvolvedore was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desenvolvedore
      @desenvolvedore = Desenvolvedore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def desenvolvedore_params
      params.require(:desenvolvedore).permit(:cpf, :nome, :funcao, :telefone, :salario, :endereco, :Produto_id)
    end
end
