class AnimaisController < ApplicationController
  before_action :set_animai, only: [:show, :edit, :update, :destroy]

  # GET /animais
  # GET /animais.json
  def index
    @animais = Animai.all
  end

  # GET /animais/1
  # GET /animais/1.json
  def show
  end

  # GET /animais/new
  def new
    @animai = Animai.new
  end

  # GET /animais/1/edit
  def edit
  end

  # POST /animais
  # POST /animais.json
  def create
    @animai = Animai.new(animai_params)

    respond_to do |format|
      if @animai.save
        format.html { redirect_to @animai, notice: 'Animai was successfully created.' }
        format.json { render :show, status: :created, location: @animai }
      else
        format.html { render :new }
        format.json { render json: @animai.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animais/1
  # PATCH/PUT /animais/1.json
  def update
    respond_to do |format|
      if @animai.update(animai_params)
        format.html { redirect_to @animai, notice: 'Animai was successfully updated.' }
        format.json { render :show, status: :ok, location: @animai }
      else
        format.html { render :edit }
        format.json { render json: @animai.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animais/1
  # DELETE /animais/1.json
  def destroy
    @animai.destroy
    respond_to do |format|
      format.html { redirect_to animais_url, notice: 'Animai was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animai
      @animai = Animai.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animai_params
      params.require(:animai).permit(:nome, :especie)
    end
end
