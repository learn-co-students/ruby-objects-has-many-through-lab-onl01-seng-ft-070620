#  learn spec/05_appointment_spec.rb
class Appointment
  attr_accessor :date, :patient, :doctor  
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    self.class.all << self
  end
  
  def self.all
    @@all
  end
end