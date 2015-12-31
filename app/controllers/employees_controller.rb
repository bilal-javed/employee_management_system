class EmployeesController < ApplicationController

  before_filter :set_employee, only: [:show, :edit, :update, :destroy]
  before_filter :set_departement, only: [:index, :new, :create, :destroy]
  # GET /employees
  # GET /employees.json
  def index
    # @employees = Employee.all
    @employees = @department.employees

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employees }
    end
  end

  # GET /employees/1
  # GET /employees/1.json
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee }
    end
  end

  # GET /employees/new
  # GET /employees/new.json
  def new
    @employee = @department.employees.new
    @employee.attachments.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee }
    end
  end

  # GET /employees/1/edit
  def edit
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = @department.employees.new(params[:employee])
    # @employee = Employee.new(params[:employee])

    @projects = Project.where(:id => params[:project])
    @employee.projects << @projects



    @employee.save
    # redirect_to @employee.departement
    # redirect_to departements_path
    respond_to do |format|
      if @employee.save
        format.html { redirect_to departements_path, notice: 'Employee was successfully created.' }
        format.json { render json: departements_path, status: :created, location: departements_path }
      else
        format.html { render action: "new" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employees/1
  # PUT /employees/1.json
  def update

    respond_to do |format|
      if @employee.update_attributes(params[:employee])
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    
    @employee.destroy

    respond_to do |format|
      format.html { redirect_to employees_url }
      format.json { head :no_content }
    end
  end
  private
    def set_employee
      @employee = @departement.employee.find(params[:id])
      # @employee = Employee.find(params[:id])
    end

    def set_departement
      @department = Departement.find(params[:departement_id])
    end
end
