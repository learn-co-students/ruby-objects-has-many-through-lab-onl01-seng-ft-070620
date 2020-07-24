class Doctor
    attr_accessor :date, :patient, :name, :appointment
    @@all = []
  
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
      
    def appointments
        Appointment.all.select {|appointment| appointment.doctor == self}
    end

    def patients
        Appointment.all.map do |appointment|
            appointment.patient
        end
    end
  
    def new_appointment(date, patient)
        Appointment.new(patient, date, self)
    end
  end 