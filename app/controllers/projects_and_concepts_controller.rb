class ProjectsAndConceptsController < ApplicationController
  before_action :set_projects_and_concept, only: [:show, :edit, :update, :destroy]

  # GET /projects_and_concepts
  # GET /projects_and_concepts.json
  def index
    @projects_and_concepts = ProjectsAndConcept.all
  end

  # GET /projects_and_concepts/1
  # GET /projects_and_concepts/1.json
  def show
  end

  # GET /projects_and_concepts/new
  def new
    @projects_and_concept = ProjectsAndConcept.new
  end

  # GET /projects_and_concepts/1/edit
  def edit
  end

  # POST /projects_and_concepts
  # POST /projects_and_concepts.json
  def create
    @projects_and_concept = ProjectsAndConcept.new(projects_and_concept_params)

    respond_to do |format|
      if @projects_and_concept.save
        format.html { redirect_to @projects_and_concept, notice: 'Projects and concept was successfully created.' }
        format.json { render :show, status: :created, location: @projects_and_concept }
      else
        format.html { render :new }
        format.json { render json: @projects_and_concept.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects_and_concepts/1
  # PATCH/PUT /projects_and_concepts/1.json
  def update
    respond_to do |format|
      if @projects_and_concept.update(projects_and_concept_params)
        format.html { redirect_to @projects_and_concept, notice: 'Projects and concept was successfully updated.' }
        format.json { render :show, status: :ok, location: @projects_and_concept }
      else
        format.html { render :edit }
        format.json { render json: @projects_and_concept.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects_and_concepts/1
  # DELETE /projects_and_concepts/1.json
  def destroy
    @projects_and_concept.destroy
    respond_to do |format|
      format.html { redirect_to projects_and_concepts_url, notice: 'Projects and concept was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projects_and_concept
      @projects_and_concept = ProjectsAndConcept.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projects_and_concept_params
      params.require(:projects_and_concept).permit(:Name, :Phase, :BA, :PM, :Next_Phase, :Next_Phase_Due, :Original_Start_Date, :Project_End_Date, :Continuing_BA_Commitment)
    end
end
