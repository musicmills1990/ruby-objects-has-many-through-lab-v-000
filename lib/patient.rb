class Patient

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
  @@all
  end

  def new_appointment(date, doctor)
  appointment =  Appointment.new(self, date, doctor)
  appointment
  end

  def appointment
    Appointment.all
  end

  def doctors
    Appointment.all.select{|a| a.doctor}
  end


end
