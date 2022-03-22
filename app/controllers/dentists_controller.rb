class DentistsController < ApplicationController
  def index
    orin_dentists = Dentist.all
    @dentists = orin_dentists.order(created_at: :desc)
  end

  def show
    @dentist = Dentist.find(params[:id])
  end
end
