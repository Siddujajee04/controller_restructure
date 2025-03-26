class Departments::Appointment
  include Mongoid::Document
  include Mongoid::Timestamps
  field :consultant, type: String
  field :appointment_date_time, type: DateTime
  belongs_to :patient, class_name: "Patient"
end
