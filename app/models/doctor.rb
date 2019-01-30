class Doctor < ActiveRecord::Base
  has_many :appointments
  has_many :patients, through: :appointments


  def index
    @doctors = Doctor.all
  end

  def show
  end

  private

  def set_doctor
    @doctor = Doctor.find params[:id]
 end
end
