class DisciplinesTurmas < ActiveRecord::Migration
  def change
  	create_table :disciplines_turmas, :id => false do |t|
  		t.integer :discipline_id
  		t.integer :turma_id
  	end
  end
end
