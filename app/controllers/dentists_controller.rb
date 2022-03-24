class DentistsController < ApplicationController
  def index
    @dentists = Dentist.orer_by_created_at
  end

  def show
    @dentist = Dentist.find(params[:id])
  end

  def new 
  end 

  def create
    Dentist.create(dentist_params)
    redirect_to '/dentists'
  end


  private
    def dentist_params
      params.permit(:name, :max_patient_capacity, :accepting_new_patient, :hours, :rating)
    end
end
