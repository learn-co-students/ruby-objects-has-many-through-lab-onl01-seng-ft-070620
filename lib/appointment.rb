class Appointment

    attr_accessor :date, :patient, :doctor
    attr_reader :name
    @@all = []
  
    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end
  
    def self.all
      @@all
    end

    def name(name)
        name
    end
  end