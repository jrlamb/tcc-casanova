class Enrollment < ActiveRecord::Base
  validates_presence_of :student_id
  belongs_to :student
  has_many :items, :dependent => :destroy
  accepts_nested_attributes_for :items, :reject_if => :all_blank, :allow_destroy => true

end
