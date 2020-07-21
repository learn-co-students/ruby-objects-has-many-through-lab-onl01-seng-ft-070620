require 'doctor.rb'
require 'patient.rb'

class Appointment

  attr_accessor :date, :patient, :doctor

  @@all = []

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end #initialize

  def self.all
    @@all
  end #self.all

end #Appointment
