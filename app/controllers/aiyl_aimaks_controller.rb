class AiylAimaksController < ApplicationController
  before_action :set_aiyl_aimak, only: [:show, :edit, :update, :destroy]

  # GET /aiyl_aimaks
  # GET /aiyl_aimaks.json
  def index
    @aiyl_aimaks = AiylAimak.all
  end

  # GET /aiyl_aimaks/1
  # GET /aiyl_aimaks/1.json
  def show
  end

  # GET /aiyl_aimaks/new
  def new
    @aiyl_aimak = AiylAimak.new
  end

  # GET /aiyl_aimaks/1/edit
  def edit
  end

  # POST /aiyl_aimaks
  # POST /aiyl_aimaks.json
  def create
    @aiyl_aimak = AiylAimak.new(aiyl_aimak_params)

    respond_to do |format|
      if @aiyl_aimak.save
        format.html { redirect_to @aiyl_aimak, notice: 'Aiyl aimak was successfully created.' }
        format.json { render :show, status: :created, location: @aiyl_aimak }
      else
        format.html { render :new }
        format.json { render json: @aiyl_aimak.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aiyl_aimaks/1
  # PATCH/PUT /aiyl_aimaks/1.json
  def update
    respond_to do |format|
      if @aiyl_aimak.update(aiyl_aimak_params)
        format.html { redirect_to @aiyl_aimak, notice: 'Aiyl aimak was successfully updated.' }
        format.json { render :show, status: :ok, location: @aiyl_aimak }
      else
        format.html { render :edit }
        format.json { render json: @aiyl_aimak.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aiyl_aimaks/1
  # DELETE /aiyl_aimaks/1.json
  def destroy
    @aiyl_aimak.destroy
    respond_to do |format|
      format.html { redirect_to aiyl_aimaks_url, notice: 'Aiyl aimak was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aiyl_aimak
      @aiyl_aimak = AiylAimak.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aiyl_aimak_params
      params.require(:aiyl_aimak).permit(:oblast_id, :district_id, :name, :soate)
    end
end
