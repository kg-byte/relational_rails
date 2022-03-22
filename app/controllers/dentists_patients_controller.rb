class DentistsPatientsController < ApplicationController
  def index
    @dentist = Dentist.find(params[:id])
    @patients = @dentist.patients
  end


end
