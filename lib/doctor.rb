require "pry"
class Doctor
  
  attr_accessor :name, :appointment, :patient
  
  @@all = []
  @appointments = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
  
  def new_appointment
    @appointments << appointments
  end
  
  #binding.pry
  def patients
  
    appointments.map do |appointment|
      
      appointment.patient
    end
  end
  
end