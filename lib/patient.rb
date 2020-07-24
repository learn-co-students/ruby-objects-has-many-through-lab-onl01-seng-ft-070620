class Patient
    attr_accessor :date, :doctor, :name, :appointment
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def appointments
        Appointment.all.select {|appointment| appointment.patient}
    end
    
    def doctors
        Appointment.all.map do |appointment|
            appointment.doctor
        end
    end

    def new_appointment(date, doctor)
        Appointment.new(self, date, doctor)
    end
end