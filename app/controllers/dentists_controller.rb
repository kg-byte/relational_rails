class DentistsController < ApplicationController
  def index
    @dentists = Dentist.all
  end

  def show
    @dentist = Dentist.find(params[:id])
  end
end
