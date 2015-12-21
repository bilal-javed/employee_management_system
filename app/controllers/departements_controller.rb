class DepartementsController < ApplicationController

	before_filter :authenticate_user!

	before_filter :set_departement, except: [:index, :new, :create]

	def index
    @departements = Departement.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @departements }
    end
  end

  # GET /departements/1
  # GET /departements/1.json
  def show

  	@employee = Employee.new
    @employees = @departement.employees

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @departement }
    end
  end

  # GET /departements/new
  # GET /departements/new.json
  def new
    @departement = Departement.new
    # @departement.attachments.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @departement }
    end
  end

  # GET /departements/1/edit
  def edit
  end

  # POST /departements
  # POST /departements.json
  def create
  	@departement = Departement.new(params[:departement])

    respond_to do |format|
      if @departement.save
        format.html { redirect_to @departement, notice: 'Departement was successfully created.' }
        format.json { render json: @departement, status: :created, location: @departement }
      else
        format.html { render action: "new" }
        format.json { render json: @departement.errors, status: :unprocessable_entity }
      end
    end
  end
  # PUT /departements/1
  # PUT /departements/1.json
  def update

    respond_to do |format|
      if @departement.update_attributes(params[:departement])
        format.html { redirect_to @departement, notice: 'Departement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @departement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departements/1
  # DELETE /departements/1.json
  def destroy
    
    @departement.destroy

    respond_to do |format|
      format.html { redirect_to departements_url }
      format.json { head :no_content }
    end
  end
  private
  def set_departement
    @departement = Departement.find(params[:id])
  end
end

