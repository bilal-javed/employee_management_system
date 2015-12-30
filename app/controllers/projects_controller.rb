class ProjectsController < InheritedResources::Base
	before_filter :set_project, only: [:show, :edit, :update, :destroy]
	before_filter :set_departement, only: [:index, :new, :create, :destroy]

	# GET /projects
  # GET /projects.json
  def index
    # @projects = project.all
    @projects = @department.projects

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @projects }
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/new
  # GET /projects/new.json
  def new
    @project = @department.projects.new
    # @project.attachments.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @project }
    end
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = @department.projects.new(params[:project])
    # @project = project.new(params[:project])
    @project.save
    # redirect_to @project.departement
    # redirect_to departements_path
    respond_to do |format|
      if @project.save
        format.html { redirect_to departements_path, notice: 'Project was successfully created.' }
        format.json { render json: departements_path, status: :created, location: departements_path }
      else
        format.html { render action: "new" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.json
  def update

    respond_to do |format|
      if @project.update_attributes(params[:project])
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    
    @project.destroy

    respond_to do |format|
      format.html { redirect_to projects_url }
      format.json { head :no_content }
    end
  end

	private
    def set_project
      @project = @departement.project.find(params[:id])
      # @project = Project.find(params[:id])
    end

    def set_departement
      @department = Departement.find(params[:departement_id])
    end
end

