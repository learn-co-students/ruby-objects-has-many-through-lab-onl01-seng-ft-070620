require 'appointment.rb'
require 'doctor.rb'

class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end #initialize

  def self.all
    @@all
  end #self.all

  def new_appointment(date, doctor)
    new_appt = Appointment.new(date, self, doctor)
  end #new_appointment

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end #appointments

  def doctors
    appointments.collect {|appt| appt.doctor}
  end #doctors

end #Patient
