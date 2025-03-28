class Departments::Appointments::AppointmentsController < ApplicationController
  def index
    
  end

  def new
    @appointment = Departments::Appointment.new
  end

  def create
    @appointment = Departments::Appointment.create(appointment_params)
  end

  private
  def appointment_params
    params.require(:appointment).permit(:consultant, :appointment_date_time)
  end
end