#  learn spec/06_patient_spec.rb
class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end

  def doctors
    appointments.map { |appt| appt.doctor }
  end
end