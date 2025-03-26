class Departments::AdmissionsController < ApplicationController
  def index
    
  end
  
  def new
    @admission = Departments::Admission.new
  end

  def create
    @admission = Departments::Admission.create(admission_params)
  end

  private
  def admission_params
    params.require(:admission).permit(:consultant, :admission_date_time)
  end

end