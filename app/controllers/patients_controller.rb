class PatientsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
  end

  def destroy

    @patient = Patient.find(params[:id])
    if @patient.destroy
      redirect_to root_path
    else
      render '/dashboard/index'
    end
  end

end
