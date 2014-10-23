class Item < ActiveRecord::Base
  belongs_to :enrollment
  belongs_to :turma
  belongs_to :discipline
end
