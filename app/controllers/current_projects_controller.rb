class CurrentProjectsController < ApplicationController
  before_action :set_current_project, only: [:show, :edit, :update, :destroy]

  # GET /current_projects
  # GET /current_projects.json
  def index
    @current_projects = CurrentProject.all
  end

  # GET /current_projects/1
  # GET /current_projects/1.json
  def show
  end

  # GET /current_projects/new
  def new
    @current_project = CurrentProject.new
  end

  # GET /current_projects/1/edit
  def edit
  end

  # POST /current_projects
  # POST /current_projects.json
  def create
    @current_project = CurrentProject.new(current_project_params)

    respond_to do |format|
      if @current_project.save
        format.html { redirect_to @current_project, notice: 'Current project was successfully created.' }
        format.json { render action: 'show', status: :created, location: @current_project }
      else
        format.html { render action: 'new' }
        format.json { render json: @current_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_projects/1
  # PATCH/PUT /current_projects/1.json
  def update
    respond_to do |format|
      if @current_project.update(current_project_params)
        format.html { redirect_to @current_project, notice: 'Current project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @current_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_projects/1
  # DELETE /current_projects/1.json
  def destroy
    @current_project.destroy
    respond_to do |format|
      format.html { redirect_to current_projects_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_project
      @current_project = CurrentProject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_project_params
      params[:current_project]
    end
end
