class EmployeesController < ApplicationController
	before_action :employees, only: [:show, :edit, :update, :destroy]
	def index
		@employee = Employee.all
	end
	def new
		@employee = Employee.new
	end
	def create
		@employee = Employee.new(employee_params)
   
	    if  @employee.save
	      redirect_to @employee
	    else
	    	render 'new'
	    end

	end
	
	def show
	  
	end	
	def edit
		
	end
	def update
	  
	 
		if @employee.update(employee_params)
		    redirect_to @employee
		  else
		    render 'edit'
  		end
	end
	def destroy
	  
	  @employee.destroy
	 
	  redirect_to employees_path
	end
    private
    def employee_params
    	params.require(:employee).permit(:first_name, :last_name, :email)
    end
    def employees
		@employee = Employee.find(params[:id])
	end
end
