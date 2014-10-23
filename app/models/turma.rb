class Turma < ActiveRecord::Base

	validates_presence_of :name, :period

	has_and_belongs_to_many :disciplines

	has_many :items
	
end
