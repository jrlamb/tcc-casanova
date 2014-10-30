class Discipline < ActiveRecord::Base

	validates_presence_of :name, :period, :course_id, :teacher_id, :loadHourly, :matrix

    belongs_to :course
    belongs_to :teacher
    has_and_belongs_to_many :turmas

    has_many :items

end
