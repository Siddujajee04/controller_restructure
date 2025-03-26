class Departments::Admission
  include Mongoid::Document
  include Mongoid::Timestamps
  field :consultant, type: String
  field :admission_date_time, type: DateTime
  belongs_to :patient, class_name: "Patient"
end
