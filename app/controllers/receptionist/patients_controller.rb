class Receptionist::PatientsController < ApplicationController
  before_action :set_patient, only: %i[edit update destroy]

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to receptionist_dashboard_path, notice: 'Patient registered successfully.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @patient.update(patient_params)
      redirect_to receptionist_dashboard_path, notice: 'Patient updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    @patient.destroy
    redirect_to receptionist_dashboard_path, notice: 'Patient deleted successfully.'
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :dob, :contact_number, :address)
  end
end
