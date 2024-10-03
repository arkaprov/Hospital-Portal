class Doctor::DashboardController < ApplicationController
  def index
    @patients = Patient.all
    @patient_registration_chart = Patient.group_by_day(:created_at).count
  end
end
