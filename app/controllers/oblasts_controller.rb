class OblastsController < ApplicationController
  before_action :set_oblast, only: [:show, :edit, :update, :destroy]

  # GET /oblasts
  # GET /oblasts.json
  def index
    @oblasts = Oblast.all
  end

  # GET /oblasts/1
  # GET /oblasts/1.json
  def show
    @infras = InfraProject.where(oblast: @oblast).page(params[:page])
  end

  # GET /oblasts/new
  def new
    @oblast = Oblast.new
  end

  # GET /oblasts/1/edit
  def edit
  end

  # POST /oblasts
  # POST /oblasts.json
  def create
    @oblast = Oblast.new(oblast_params)

    respond_to do |format|
      if @oblast.save
        format.html { redirect_to @oblast, notice: 'Oblast was successfully created.' }
        format.json { render :show, status: :created, location: @oblast }
      else
        format.html { render :new }
        format.json { render json: @oblast.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oblasts/1
  # PATCH/PUT /oblasts/1.json
  def update
    respond_to do |format|
      if @oblast.update(oblast_params)
        format.html { redirect_to @oblast, notice: 'Oblast was successfully updated.' }
        format.json { render :show, status: :ok, location: @oblast }
      else
        format.html { render :edit }
        format.json { render json: @oblast.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oblasts/1
  # DELETE /oblasts/1.json
  def destroy
    @oblast.destroy
    respond_to do |format|
      format.html { redirect_to oblasts_url, notice: 'Oblast was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oblast
      @oblast = Oblast.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oblast_params
      params.require(:oblast).permit(:name, :soate)
    end
end
