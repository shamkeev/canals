class InfraProjectsController < ApplicationController
  before_action :set_infra_project, only: [:show, :edit, :update, :destroy]

  # GET /infra_projects
  # GET /infra_projects.json
  def index
    @infra_projects = InfraProject.all
  end

  # GET /infra_projects/1
  # GET /infra_projects/1.json
  def show
    @layers = Layer.where(infra_project_id: @infra_project.id).order(:zindex)
  end

  # GET /infra_projects/new
  def new
    @infra_project = InfraProject.new
  end

  # GET /infra_projects/1/edit
  def edit
  end

  # POST /infra_projects
  # POST /infra_projects.json
  def create
    @infra_project = InfraProject.new(infra_project_params)

    respond_to do |format|
      if @infra_project.save
        format.html { redirect_to @infra_project, notice: 'Infra project was successfully created.' }
        format.json { render :show, status: :created, location: @infra_project }
      else
        format.html { render :new }
        format.json { render json: @infra_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infra_projects/1
  # PATCH/PUT /infra_projects/1.json
  def update
    respond_to do |format|
      if @infra_project.update(infra_project_params)
        format.html { redirect_to @infra_project, notice: 'Infra project was successfully updated.' }
        format.json { render :show, status: :ok, location: @infra_project }
      else
        format.html { render :edit }
        format.json { render json: @infra_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infra_projects/1
  # DELETE /infra_projects/1.json
  def destroy
    @infra_project.destroy
    respond_to do |format|
      format.html { redirect_to infra_projects_url, notice: 'Infra project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infra_project
      @infra_project = InfraProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def infra_project_params
      params.require(:infra_project).permit(:title, :status, :start_date, :end_date, :desc)
    end
end
